
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_3__ {int intr_urb; int rx_urb; int netdev; } ;
typedef TYPE_1__ rtl8150_t ;
typedef int pm_message_t ;


 int netif_device_detach (int ) ;
 scalar_t__ netif_running (int ) ;
 TYPE_1__* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int rtl8150_suspend(struct usb_interface *intf, pm_message_t message)
{
 rtl8150_t *dev = usb_get_intfdata(intf);

 netif_device_detach(dev->netdev);

 if (netif_running(dev->netdev)) {
  usb_kill_urb(dev->rx_urb);
  usb_kill_urb(dev->intr_urb);
 }
 return 0;
}
