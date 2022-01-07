
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct ttusbir {int is_led_on; int dev; int * urb; int led; } ;


 int GFP_KERNEL ;
 int NUM_URBS ;
 int dev_warn (int ,char*,int) ;
 int led_classdev_resume (int *) ;
 struct ttusbir* usb_get_intfdata (struct usb_interface*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int ttusbir_resume(struct usb_interface *intf)
{
 struct ttusbir *tt = usb_get_intfdata(intf);
 int i, rc;

 tt->is_led_on = 1;
 led_classdev_resume(&tt->led);

 for (i = 0; i < NUM_URBS; i++) {
  rc = usb_submit_urb(tt->urb[i], GFP_KERNEL);
  if (rc) {
   dev_warn(tt->dev, "failed to submit urb: %d\n", rc);
   break;
  }
 }

 return rc;
}
