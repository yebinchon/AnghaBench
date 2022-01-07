
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct ems_usb {int tx_msg_buffer; int intr_in_buffer; int intr_urb; int netdev; } ;


 int free_candev (int ) ;
 int kfree (int ) ;
 int unlink_all_urbs (struct ems_usb*) ;
 int unregister_netdev (int ) ;
 int usb_free_urb (int ) ;
 struct ems_usb* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void ems_usb_disconnect(struct usb_interface *intf)
{
 struct ems_usb *dev = usb_get_intfdata(intf);

 usb_set_intfdata(intf, ((void*)0));

 if (dev) {
  unregister_netdev(dev->netdev);
  free_candev(dev->netdev);

  unlink_all_urbs(dev);

  usb_free_urb(dev->intr_urb);

  kfree(dev->intr_in_buffer);
  kfree(dev->tx_msg_buffer);
 }
}
