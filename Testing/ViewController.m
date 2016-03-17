//
//  ViewController.m
//  Testing
//
//  Created by Virendra Gupta on 2/8/16.
//  Copyright © 2016 Virendra Gupta. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    NSURL *baseURL = [NSURL URLWithString:@"https://partnersvtoolkit.appspot.com/get/"];
    
    NSURL *baseURL = [NSURL URLWithString:@"https://partnersvtoolkit.appspot.com/getExhibits"];
    NSLog(@"***%@",baseURL);
    
    [self stringWithUrl:baseURL];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)stringWithUrl:(NSURL *)url
{
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url
                                                cachePolicy:NSURLRequestReturnCacheDataElseLoad
                                            timeoutInterval:30];
    // Fetch the JSON response
    NSData *urlData;
    NSURLResponse *response;
    NSError *error;
    
    // Make synchronous request
    urlData = [NSURLConnection sendSynchronousRequest:urlRequest
                                    returningResponse:&response
                                                error:&error];
    
   // NSLog(@"%@",urlData);
    
    
    // Construct a String around the Data from the response
    
    NSLog(@"pp%@",[[NSString alloc] initWithData:urlData encoding:NSUTF8StringEncoding]);
    return [[NSString alloc] initWithData:urlData encoding:NSUTF8StringEncoding];
}
@end
