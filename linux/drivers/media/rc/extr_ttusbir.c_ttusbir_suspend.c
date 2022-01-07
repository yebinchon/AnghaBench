
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct ttusbir {int bulk_urb; int led; int * urb; } ;
typedef int pm_message_t ;


 int NUM_URBS ;
 int led_classdev_suspend (int *) ;
 struct ttusbir* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int ttusbir_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct ttusbir *tt = usb_get_intfdata(intf);
 int i;

 for (i = 0; i < NUM_URBS; i++)
  usb_kill_urb(tt->urb[i]);

 led_classdev_suspend(&tt->led);
 usb_kill_urb(tt->bulk_urb);

 return 0;
}
