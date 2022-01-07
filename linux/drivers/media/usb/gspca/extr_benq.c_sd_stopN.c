
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {scalar_t__ num_altsetting; } ;
struct gspca_dev {int iface; int dev; } ;


 int reg_w (struct gspca_dev*,int,int) ;
 struct usb_interface* usb_ifnum_to_if (int ,int ) ;
 int usb_set_interface (int ,int ,scalar_t__) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 struct usb_interface *intf;

 reg_w(gspca_dev, 0x003c, 0x0003);
 reg_w(gspca_dev, 0x003c, 0x0004);
 reg_w(gspca_dev, 0x003c, 0x0005);
 reg_w(gspca_dev, 0x003c, 0x0006);
 reg_w(gspca_dev, 0x003c, 0x0007);

 intf = usb_ifnum_to_if(gspca_dev->dev, gspca_dev->iface);
 usb_set_interface(gspca_dev->dev, gspca_dev->iface,
     intf->num_altsetting - 1);
}
