
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sd {scalar_t__ sensor; TYPE_1__* blue_bal; TYPE_2__* red_bal; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_3__ {int val; } ;


 scalar_t__ SENSOR_PO2030N ;
 int i2c_w8 (struct gspca_dev*,int*) ;
 int reg_w1 (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setredblue(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->sensor == SENSOR_PO2030N) {
  u8 rg1b[] =
   {0xc1, 0x6e, 0x16, 0x00, 0x40, 0x00, 0x00, 0x10};


  rg1b[3] = sd->red_bal->val * 2;
  rg1b[5] = sd->blue_bal->val * 2;
  i2c_w8(gspca_dev, rg1b);
  return;
 }
 reg_w1(gspca_dev, 0x05, sd->red_bal->val);

 reg_w1(gspca_dev, 0x06, sd->blue_bal->val);
}
