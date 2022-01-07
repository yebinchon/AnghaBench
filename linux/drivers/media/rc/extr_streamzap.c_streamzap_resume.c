
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct streamzap_ir {int dev; int urb_in; } ;


 int EIO ;
 int GFP_ATOMIC ;
 int dev_err (int ,char*) ;
 struct streamzap_ir* usb_get_intfdata (struct usb_interface*) ;
 scalar_t__ usb_submit_urb (int ,int ) ;

__attribute__((used)) static int streamzap_resume(struct usb_interface *intf)
{
 struct streamzap_ir *sz = usb_get_intfdata(intf);

 if (usb_submit_urb(sz->urb_in, GFP_ATOMIC)) {
  dev_err(sz->dev, "Error submitting urb\n");
  return -EIO;
 }

 return 0;
}
