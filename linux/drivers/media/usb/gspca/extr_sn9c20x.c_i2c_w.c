
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int* usb_buf; int usb_err; } ;


 int EIO ;
 int msleep (int) ;
 int pr_err (char*,...) ;
 int reg_r (struct gspca_dev*,int,int) ;
 int reg_w (struct gspca_dev*,int,int const*,int) ;

__attribute__((used)) static void i2c_w(struct gspca_dev *gspca_dev, const u8 *buffer)
{
 int i;

 reg_w(gspca_dev, 0x10c0, buffer, 8);
 for (i = 0; i < 5; i++) {
  reg_r(gspca_dev, 0x10c0, 1);
  if (gspca_dev->usb_err < 0)
   return;
  if (gspca_dev->usb_buf[0] & 0x04) {
   if (gspca_dev->usb_buf[0] & 0x08) {
    pr_err("i2c_w error\n");
    gspca_dev->usb_err = -EIO;
   }
   return;
  }
  msleep(10);
 }
 pr_err("i2c_w reg %02x no response\n", buffer[2]);

}
