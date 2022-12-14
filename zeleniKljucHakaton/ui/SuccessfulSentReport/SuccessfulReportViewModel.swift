//
//  SuccessfulReportViewModel.swift
//  zeleniKljucHakaton
//
//  Created by Teodora Randjelovic on 10/15/22.
//

import Foundation

protocol SuccessfulReportViewDelegate {
    func destroyView()
}

class SuccessfulReportViewModel: SuccessfulReportViewDelegate {
    private var coordinator: SuccessfulReportCoordinator?
    
    init (coordinator: SuccessfulReportCoordinator) {
        self.coordinator = coordinator
    }
    
    func destroyView() {
        coordinator?.stop()
    }
}
