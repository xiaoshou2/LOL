//
//  LOLBigGogCell.m
//  LOL
//
//  Created by feibai on 16/1/9.
//  Copyright © 2016年 feibai. All rights reserved.
//

#import "LOLBigGogCell.h"

@implementation LOLBigGogCell


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    // 总列
    int totalCol = 4;
    CGFloat marginY = 0;
    CGFloat startY = 0;
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
         CGFloat viewW = ScreenWidth/4;
        CGFloat viewH = 94;
        for (int i = 0; i<8; i++) {
            self.bottmoView = [[UIImageView alloc] init];
            self.bottmoView.tag = 2000+i;
            self.bottmoView.userInteractionEnabled = YES;
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageClicked:)];
            [self.bottmoView addGestureRecognizer:tap];
            self.headImageView = [[UIImageView alloc] init];
            self.userNameLb = [[UILabel alloc] init];
            self.userMessageLb = [[UILabel alloc] init];
            self.userMessageSecLb = [[UILabel alloc] init];
            
            // 行数
            int row = i / totalCol;
            // 列数
            int cul = i % totalCol;
            
            CGFloat x = 0 + (viewW) * cul + marginY;
            CGFloat y = startY + (viewH +marginY) * row;
            
            CGFloat viewW = ScreenWidth/4;
        [self.bottmoView setFrame:CGRectMake(x, y, viewW,viewH+2)];
        [self.headImageView setFrame:CGRectMake(self.bottmoView.width/2-35/2,5,35,35)];
        [self.userNameLb setFrame:CGRectMake(self.headImageView.frame.origin.x-5,self.headImageView.frame.origin.y+40,45,17)];
        [self.userMessageLb setFrame:CGRectMake(self.headImageView.frame.origin.x-5,self.headImageView.frame.origin.y+57,45,17)];
        [self.userMessageSecLb setFrame:CGRectMake(self.headImageView.frame.origin.x-5,self.headImageView.frame.origin.y+74,45,17)];
    
    
            
            if (i == 0) {
                self.bottmoView.backgroundColor = [UIColor yellowColor];
                self.headImageView.backgroundColor = [UIColor redColor];
                self.userNameLb.backgroundColor = [UIColor blueColor];
                self.userMessageLb.backgroundColor = [UIColor blackColor];
                self.userMessageSecLb.backgroundColor = [UIColor purpleColor];
                
                
            }else if(i ==1)
            {
                self.bottmoView.backgroundColor = [UIColor redColor];
                self.headImageView.backgroundColor = [UIColor yellowColor];
                self.userNameLb.backgroundColor = [UIColor purpleColor];
                self.userMessageLb.backgroundColor = [UIColor blackColor];
                self.userMessageSecLb.backgroundColor = [UIColor purpleColor];

            }else if(i ==2)
            {
                self.bottmoView.backgroundColor = [UIColor blackColor];
                self.headImageView.backgroundColor = [UIColor brownColor];
                self.userNameLb.backgroundColor = [UIColor redColor];
                self.userMessageLb.backgroundColor = [UIColor blackColor];
                self.userMessageSecLb.backgroundColor = [UIColor whiteColor];

 
                
            }else if(i ==3)
            {
                self.bottmoView.backgroundColor = [UIColor yellowColor];
                self.headImageView.backgroundColor = [UIColor whiteColor];
                self.userNameLb.backgroundColor = [UIColor blueColor];
                self.userMessageLb.backgroundColor = [UIColor blackColor];
                self.userMessageSecLb.backgroundColor = [UIColor purpleColor];


                
            }else if(i ==4)
            {
                self.bottmoView.backgroundColor = [UIColor brownColor];
                self.headImageView.backgroundColor = [UIColor purpleColor];
                self.userNameLb.backgroundColor = [UIColor redColor];
                self.userMessageLb.backgroundColor = [UIColor blackColor];
                self.userMessageSecLb.backgroundColor = [UIColor purpleColor];


                
            }else if(i ==5)
            {
                self.bottmoView.backgroundColor = [UIColor grayColor];
                self.headImageView.backgroundColor = [UIColor redColor];
                self.userNameLb.backgroundColor = [UIColor yellowColor];
                self.userMessageLb.backgroundColor = [UIColor blackColor];
                self.userMessageSecLb.backgroundColor = [UIColor purpleColor];


                
            }else if(i ==6)
            {
                self.bottmoView.backgroundColor = [UIColor purpleColor];
                self.headImageView.backgroundColor = [UIColor yellowColor];
                self.userNameLb.backgroundColor = [UIColor grayColor];
                self.userMessageLb.backgroundColor = [UIColor blackColor];
                self.userMessageSecLb.backgroundColor = [UIColor purpleColor];

  
                
            }else if(i ==7)
            {
                self.bottmoView.backgroundColor = [UIColor greenColor];
                self.headImageView.backgroundColor = [UIColor blueColor];
                self.userNameLb.backgroundColor = [UIColor brownColor];
                self.userMessageLb.backgroundColor = [UIColor blackColor];
                self.userMessageSecLb.backgroundColor = [UIColor purpleColor];
                
            }
            
            [self addSubview:self.bottmoView];
            [self.bottmoView addSubview:self.headImageView];
            [self.bottmoView addSubview:self.userNameLb];
            [self.bottmoView addSubview:self.userMessageLb];
            [self.bottmoView addSubview:self.userMessageSecLb];

     
        }
        
    }
    return self;
}

-(void)imageClicked:(UITapGestureRecognizer*)sender
{
    UIView *temp = sender.view;
    if (self.godClickedBk) {
        self.godClickedBk(temp.tag);
    }
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
