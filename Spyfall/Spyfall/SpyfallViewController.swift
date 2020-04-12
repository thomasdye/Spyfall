//
//  SpyfallViewController.swift
//  Spyfall
//
//  Created by Thomas Dye on 4/11/20.
//  Copyright © 2020 Thomas Dye. All rights reserved.
//

import UIKit
import Foundation

class SpyfallViewController: UIViewController {
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var locationTitleLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    let arrayOfLocations: [String] = ["School", "Church", "Beach", "Laundromat"]
    var totalLocations: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getTotalLocations()
        setUpLocationTitle()
        setupLocations()
    }
    @IBAction func startButtonTapped(_ sender: UIButton) {
        
        guard let selectedLocation = arrayOfLocations.randomElement() else {
            return
        }
        
        print(selectedLocation)
    }
    
    func getTotalLocations() {
        totalLocations = arrayOfLocations.count
    }
    
    func setUpLocationTitle() {
        locationTitleLabel.text = "Locations (\(totalLocations))"
    }
    
    func setupLocations() {
        
        var stringRepresentation = arrayOfLocations.joined(separator: "\n")
        locationLabel.text = stringRepresentation
    }
}
