//
//  ViewController.swift
//  SwiftPlayMedia
//
//  Created by apple on 3/24/16.
//  Copyright © 2016 apple. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var msg: UILabel!
    @IBOutlet weak var btUrl: UIButton!
    @IBOutlet weak var localUrl: UIButton!
    var playerItem:AVPlayerItem?
    var player:AVPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func urlPlay(sender: AnyObject) {
        
        let url = NSURL(string: "https://s3.amazonaws.com/kargopolov/kukushka.mp3")
        
        
        playerItem = AVPlayerItem(URL: url!)
        player=AVPlayer(playerItem: playerItem!)
        if player?.rate == 0
        {
            player!.play()
            msg.text="Playing"
            
        } else {
            player!.pause()
            msg.text="No"
        }
        
       
        
    }
    @IBAction func localPlay(sender: AnyObject) {
        
        
        let url = NSBundle.mainBundle().pathForResource("006", ofType:"mp3")
        
        // let player = AVPlayer(URL: NSURL(fileURLWithPath: path))
        playerItem = AVPlayerItem(URL: NSURL(fileURLWithPath: url!))
        // playerItem = AVPlayerItem(URL: url!)
        player=AVPlayer(playerItem: playerItem!)
        if player?.rate == 0
        {
        player!.play()
        msg.text="Playing"
        
        } else {
        player!.pause()
        msg.text="No"
        }
        
    }
}

