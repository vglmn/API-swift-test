//
//  ViewController.swift
//  APPTEST
//
//  Created by nvr on 16/12/2019.
//  Copyright © 2019 aucun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var additionLabel: UILabel!
    @IBOutlet weak var ttcLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        updateDisplay()
    }
    
    @IBAction func controlValueChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            curr = "€"
        } else {
            curr = "$"
        }
        updateDisplay()
    }

    let tauxTTC = 1.2
    var curr = "€"
    
    func updateDisplay(){
        let montantPrix = slider.value
        
        let montantTTC = Double(montantPrix) * tauxTTC
        additionLabel.text = String(Int(montantPrix)) + " " + curr
        ttcLabel.text = String(Int(montantTTC)) + " " + curr
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDisplay()
        // Do any additional setup after loading the view.
    }


}

