
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {TYPE_1__* white_balance; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int val; } ;


 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setwhitebalance(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 reg_w(gspca_dev, 0xff, 0x00);
 reg_w(gspca_dev, 0xc6, sd->white_balance->val);

 reg_w(gspca_dev, 0xdc, 0x01);
}
