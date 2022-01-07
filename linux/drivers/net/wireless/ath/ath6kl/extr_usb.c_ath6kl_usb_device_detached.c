
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct ath6kl_usb {int ar; } ;


 int ath6kl_core_cleanup (int ) ;
 int ath6kl_stop_txrx (int ) ;
 int ath6kl_usb_destroy (struct ath6kl_usb*) ;
 int mdelay (int) ;
 struct ath6kl_usb* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void ath6kl_usb_device_detached(struct usb_interface *interface)
{
 struct ath6kl_usb *ar_usb;

 ar_usb = usb_get_intfdata(interface);
 if (ar_usb == ((void*)0))
  return;

 ath6kl_stop_txrx(ar_usb->ar);


 mdelay(20);
 ath6kl_core_cleanup(ar_usb->ar);
 ath6kl_usb_destroy(ar_usb);
}
