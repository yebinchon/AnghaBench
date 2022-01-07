
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int* usb_buf; } ;
typedef int s32 ;


 int reg_w_buf (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setgain(struct gspca_dev *gspca_dev, s32 val)
{



 if (val < 64)
  gspca_dev->usb_buf[0] = val;
 else if (val < 128)
  gspca_dev->usb_buf[0] = (val / 2) | 0x40;
 else
  gspca_dev->usb_buf[0] = (val / 4) | 0xc0;

 gspca_dev->usb_buf[1] = 0;
 reg_w_buf(gspca_dev, 0x8335, 2);
}
