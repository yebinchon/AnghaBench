
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct ttusbir {TYPE_1__* bulk_urb; TYPE_1__** urb; int led; int rc; struct usb_device* udev; } ;
struct TYPE_3__ {int transfer_dma; int transfer_buffer; } ;


 int NUM_URBS ;
 int kfree (struct ttusbir*) ;
 int led_classdev_unregister (int *) ;
 int rc_unregister_device (int ) ;
 int usb_free_coherent (struct usb_device*,int,int ,int ) ;
 int usb_free_urb (TYPE_1__*) ;
 struct ttusbir* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (TYPE_1__*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void ttusbir_disconnect(struct usb_interface *intf)
{
 struct ttusbir *tt = usb_get_intfdata(intf);
 struct usb_device *udev = tt->udev;
 int i;

 tt->udev = ((void*)0);

 rc_unregister_device(tt->rc);
 led_classdev_unregister(&tt->led);
 for (i = 0; i < NUM_URBS; i++) {
  usb_kill_urb(tt->urb[i]);
  usb_free_coherent(udev, 128, tt->urb[i]->transfer_buffer,
      tt->urb[i]->transfer_dma);
  usb_free_urb(tt->urb[i]);
 }
 usb_kill_urb(tt->bulk_urb);
 usb_free_urb(tt->bulk_urb);
 usb_set_intfdata(intf, ((void*)0));
 kfree(tt);
}
