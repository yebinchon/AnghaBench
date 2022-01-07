
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gspca_dev {TYPE_1__* gain; } ;
typedef int s32 ;
struct TYPE_2__ {int maximum; } ;


 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setgain(struct gspca_dev *gspca_dev, s32 val)
{
 reg_w(gspca_dev, 0xff, 0x04);
 reg_w(gspca_dev, 0x0e, 0x00);
 reg_w(gspca_dev, 0x0f, gspca_dev->gain->maximum - val + 1);


 reg_w(gspca_dev, 0x11, 0x01);
}
