//
//  ViewController.swift
//  EzPopoverView
//
//  Created by iOS Student on 12/28/16.
//  Copyright © 2016 tek4fun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showView" {
            let controller = segue.destination
            controller.popoverPresentationController!.delegate = self
            controller.popoverPresentationController?.backgroundColor = UIColor.white
            controller.preferredContentSize = CGSize(width: 220, height: 30)
            
        }
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle{
        return .none
    }

    
}

