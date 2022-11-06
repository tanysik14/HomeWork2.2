//
//  ViewController.swift
//  HomeWork2.2
//
//  Created by Tatsiana Pauliukova on 5.11.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var trafficLightColorRed: UIView!
    @IBOutlet var trafficLightColorYellow: UIView!
    @IBOutlet var trafficLightColorGreen: UIView!
    @IBOutlet var buttonStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonStart.layer.cornerRadius = 5
        trafficLightColorRed.alpha = 0.3
        trafficLightColorYellow.alpha = 0.3
        trafficLightColorGreen.alpha = 0.3
    }
    
    override func viewWillLayoutSubviews() {
        trafficLightColorRed.layer.cornerRadius = trafficLightColorRed.frame.width / 2
        trafficLightColorYellow.layer.cornerRadius = trafficLightColorYellow.frame.width / 2
        trafficLightColorGreen.layer.cornerRadius = trafficLightColorGreen.frame.width / 2
    }
    
    @IBAction func trafficLightSwitching() {
        buttonStart.setTitle("Next", for: .normal)
        
        if trafficLightColorRed.alpha == 1 {
            trafficLightColorYellow.alpha = 1
            trafficLightColorRed.alpha = 0.3
        } else if trafficLightColorYellow.alpha == 1 {
            trafficLightColorGreen.alpha = 1
            trafficLightColorYellow.alpha = 0.3
        } else if trafficLightColorGreen.alpha == 1 {
            trafficLightColorRed.alpha = 1
            trafficLightColorGreen.alpha = 0.3
        } else {
            trafficLightColorRed.alpha = 1
        }
    }
    
}

