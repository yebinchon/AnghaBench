
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int usb_err; int iface; int dev; } ;


 int EIO ;
 int pr_err (char*,int) ;
 int reg_r (struct gspca_dev*,int) ;
 int usb_set_interface (int ,int ,int) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 u8 ret;


 usb_set_interface(gspca_dev->dev, gspca_dev->iface, 1);
 ret = reg_r(gspca_dev, 0x0740);
 if (gspca_dev->usb_err >= 0) {
  if (ret != 0xff) {
   pr_err("init reg: 0x%02x\n", ret);
   gspca_dev->usb_err = -EIO;
  }
 }
 return gspca_dev->usb_err;
}
