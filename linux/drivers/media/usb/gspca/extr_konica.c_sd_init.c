
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int* usb_buf; int usb_err; } ;


 int msleep (int) ;
 int reg_r (struct gspca_dev*,int ,int) ;
 int reg_w (struct gspca_dev*,int ,int) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 int i;






 msleep(6000);
 for (i = 0; i < 20; i++) {
  reg_r(gspca_dev, 0, 0x10);
  if (gspca_dev->usb_buf[0] == 3)
   break;
  msleep(100);
 }
 reg_w(gspca_dev, 0, 0x0d);

 return gspca_dev->usb_err;
}
