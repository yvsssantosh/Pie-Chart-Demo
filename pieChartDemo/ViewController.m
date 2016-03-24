//
//  ViewController.m
//  pieChartDemo
//
//  Created by Lion User on 15/09/2014.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize piechartview;

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSMutableArray *array=[[NSMutableArray alloc]init];
    for(int i=0;i<10;i++)
    {
        NSNumber *num=[NSNumber numberWithInt:rand()%60+20];
        
        [array addObject:num];
    }
    [self.piechartview renderInLayer:self.piechartview dataArray:array];
	}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
