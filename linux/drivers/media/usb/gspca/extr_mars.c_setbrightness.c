
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int* usb_buf; } ;
typedef int s32 ;


 int reg_w (struct gspca_dev*,int) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev, s32 val)
{
 gspca_dev->usb_buf[0] = 0x61;
 gspca_dev->usb_buf[1] = val;
 reg_w(gspca_dev, 2);
}
