
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct iguanair {int dma_out; int packet; int udev; int dma_in; int buf_in; int urb_out; int urb_in; int rc; } ;


 int MAX_IN_PACKET ;
 int MAX_OUT_PACKET ;
 int kfree (struct iguanair*) ;
 int rc_unregister_device (int ) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (int ) ;
 struct iguanair* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void iguanair_disconnect(struct usb_interface *intf)
{
 struct iguanair *ir = usb_get_intfdata(intf);

 rc_unregister_device(ir->rc);
 usb_set_intfdata(intf, ((void*)0));
 usb_kill_urb(ir->urb_in);
 usb_kill_urb(ir->urb_out);
 usb_free_urb(ir->urb_in);
 usb_free_urb(ir->urb_out);
 usb_free_coherent(ir->udev, MAX_IN_PACKET, ir->buf_in, ir->dma_in);
 usb_free_coherent(ir->udev, MAX_OUT_PACKET, ir->packet, ir->dma_out);
 kfree(ir);
}
