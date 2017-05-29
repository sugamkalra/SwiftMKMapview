//
//  ViewController.swift
//  SwiftyMapView
//
//  Created by Sugam Kalra on 29/05/17.
//  Copyright © 2017 Sugam Kalra. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mkMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Method to configure mapview and add annotation
        configureMap()
    }
    
    /**
     Method to configure map and add annotation
     
     @param nil
     
     @return nil
     */
    func configureMap()
    {
        let location = CLLocationCoordinate2D(latitude: 26.806888, longitude: 75.645388)
        
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mkMapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Appirio"
        annotation.subtitle = "A Wipro Company"
        mkMapView.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

