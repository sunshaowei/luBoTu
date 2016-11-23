//
//  ViewController.m
//  lunbo
//
//  Created by kuanter on 16/4/6.
//  Copyright © 2016年 kuanter. All rights reserved.
//

#import "ViewController.h"
#import "SDCycleScrollView.h"

@interface ViewController ()<SDCycleScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //本地图片
//    SDCycleScrollView *adView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(50,100, 300, 400) shouldInfiniteLoop:YES imageNamesGroup:@[[UIImage imageNamed:@"lun1"],[UIImage imageNamed:@"lun2"]]];
    
    
    
    
        NSString*urlStr1=@"http://pic.to8to.com/attch/day_160218/20160218_6410eaeeba9bc1b3e944xD5gKKhPEuEv.png";
        NSString*urlStr2=@"http:/app.kuanter.com/resources/appGeneralizePicture/1459445816753.jpg";
        NSString*urlStr3=@"http://www.52ij.com/uploads/allimg/160317/1110104P8-4.jpg";
    //网络图片
    SDCycleScrollView*adView=[SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(50,100, 300, 200) imageURLStringsGroup:@[[NSURL URLWithString:urlStr1],[NSURL URLWithString:urlStr2],[NSURL URLWithString:urlStr3]]];
    


    adView.delegate=self;
    [self.view addSubview:adView];
    adView.pageControlStyle = SDCycleScrollViewPageContolStyleAnimated;
    adView.placeholderImage = [UIImage imageNamed:@"zhan"];//点位图
    
   

}
#pragma ==================代理方法＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
/** 点击图片回调 */
- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index{
     NSLog(@"didSelectItemAtIndex===================%ld",(long)index);

}

/** 图片滚动回调 */
- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didScrollToIndex:(NSInteger)index{
     NSLog(@"didScrollToIndex====================%ld",(long)index);

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end















