
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct mceusb_dev {int urb_in; int dev; } ;


 int EIO ;
 int GFP_ATOMIC ;
 int dev_info (int ,char*) ;
 struct mceusb_dev* usb_get_intfdata (struct usb_interface*) ;
 scalar_t__ usb_submit_urb (int ,int ) ;

__attribute__((used)) static int mceusb_dev_resume(struct usb_interface *intf)
{
 struct mceusb_dev *ir = usb_get_intfdata(intf);
 dev_info(ir->dev, "resume");
 if (usb_submit_urb(ir->urb_in, GFP_ATOMIC))
  return -EIO;
 return 0;
}
