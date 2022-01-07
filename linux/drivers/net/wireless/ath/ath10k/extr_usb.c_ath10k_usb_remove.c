
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct ath10k_usb {int ar; } ;


 int ath10k_core_destroy (int ) ;
 int ath10k_core_unregister (int ) ;
 int ath10k_usb_destroy (int ) ;
 int interface_to_usbdev (struct usb_interface*) ;
 struct ath10k_usb* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;

__attribute__((used)) static void ath10k_usb_remove(struct usb_interface *interface)
{
 struct ath10k_usb *ar_usb;

 ar_usb = usb_get_intfdata(interface);
 if (!ar_usb)
  return;

 ath10k_core_unregister(ar_usb->ar);
 ath10k_usb_destroy(ar_usb->ar);
 usb_put_dev(interface_to_usbdev(interface));
 ath10k_core_destroy(ar_usb->ar);
}
