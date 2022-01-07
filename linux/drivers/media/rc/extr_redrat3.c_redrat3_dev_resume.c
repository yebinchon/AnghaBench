
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct redrat3_dev {int led; int wide_urb; int narrow_urb; } ;


 int EIO ;
 int GFP_ATOMIC ;
 int led_classdev_resume (int *) ;
 struct redrat3_dev* usb_get_intfdata (struct usb_interface*) ;
 scalar_t__ usb_submit_urb (int ,int ) ;

__attribute__((used)) static int redrat3_dev_resume(struct usb_interface *intf)
{
 struct redrat3_dev *rr3 = usb_get_intfdata(intf);

 if (usb_submit_urb(rr3->narrow_urb, GFP_ATOMIC))
  return -EIO;
 if (usb_submit_urb(rr3->wide_urb, GFP_ATOMIC))
  return -EIO;
 led_classdev_resume(&rr3->led);
 return 0;
}
