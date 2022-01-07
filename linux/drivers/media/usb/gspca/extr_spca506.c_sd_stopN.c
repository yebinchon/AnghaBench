
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct gspca_dev {struct usb_device* dev; } ;


 int reg_w (struct usb_device*,int,int,int) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 struct usb_device *dev = gspca_dev->dev;

 reg_w(dev, 0x02, 0x00, 0x0000);
 reg_w(dev, 0x03, 0x00, 0x0004);
 reg_w(dev, 0x03, 0x00, 0x0003);
}
