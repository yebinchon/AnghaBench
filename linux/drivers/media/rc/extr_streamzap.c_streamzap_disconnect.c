
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct streamzap_ir {int dma_in; int buf_in; int buf_in_len; int urb_in; int rdev; int * usbdev; } ;


 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct streamzap_ir*) ;
 int rc_unregister_device (int ) ;
 int usb_free_coherent (struct usb_device*,int ,int ,int ) ;
 int usb_free_urb (int ) ;
 struct streamzap_ir* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void streamzap_disconnect(struct usb_interface *interface)
{
 struct streamzap_ir *sz = usb_get_intfdata(interface);
 struct usb_device *usbdev = interface_to_usbdev(interface);

 usb_set_intfdata(interface, ((void*)0));

 if (!sz)
  return;

 sz->usbdev = ((void*)0);
 rc_unregister_device(sz->rdev);
 usb_kill_urb(sz->urb_in);
 usb_free_urb(sz->urb_in);
 usb_free_coherent(usbdev, sz->buf_in_len, sz->buf_in, sz->dma_in);

 kfree(sz);
}
