
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct gspca_dev {int dummy; } ;
struct sd {int sensor; struct gspca_dev gspca_dev; TYPE_2__* vflip; TYPE_1__* hflip; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_3__ {int val; } ;






 int i2c_w1 (struct gspca_dev*,int,int) ;

__attribute__((used)) static void sethvflip(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 comn;

 switch (sd->sensor) {
 case 131:
  comn = 0x18;
  if (sd->vflip->val)
   comn |= 0x01;
  i2c_w1(gspca_dev, 0x01, comn);
  break;
 case 130:
  comn = 0x02;
  if (!sd->vflip->val)
   comn |= 0x80;
  i2c_w1(gspca_dev, 0x75, comn);
  break;
 case 129:
  comn = 0x06;
  if (sd->vflip->val)
   comn |= 0x80;
  i2c_w1(gspca_dev, 0x75, comn);
  break;
 case 128:
  comn = 0x0a;
  if (sd->hflip->val)
   comn |= 0x80;
  if (sd->vflip->val)
   comn |= 0x40;
  i2c_w1(&sd->gspca_dev, 0x1e, comn);
  break;
 }
}
