
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; scalar_t__ qlen; } ;
struct usbnet {int net; TYPE_1__ txq; int flags; int suspend_count; } ;
struct usb_interface {int dummy; } ;
typedef int pm_message_t ;


 int EBUSY ;
 int EVENT_DEV_ASLEEP ;
 scalar_t__ PMSG_IS_AUTO (int ) ;
 int __usbnet_status_stop_force (struct usbnet*) ;
 int netif_device_attach (int ) ;
 int netif_device_detach (int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;
 int usbnet_terminate_urbs (struct usbnet*) ;

int usbnet_suspend (struct usb_interface *intf, pm_message_t message)
{
 struct usbnet *dev = usb_get_intfdata(intf);

 if (!dev->suspend_count++) {
  spin_lock_irq(&dev->txq.lock);

  if (dev->txq.qlen && PMSG_IS_AUTO(message)) {
   dev->suspend_count--;
   spin_unlock_irq(&dev->txq.lock);
   return -EBUSY;
  } else {
   set_bit(EVENT_DEV_ASLEEP, &dev->flags);
   spin_unlock_irq(&dev->txq.lock);
  }




  netif_device_detach (dev->net);
  usbnet_terminate_urbs(dev);
  __usbnet_status_stop_force(dev);





  netif_device_attach (dev->net);
 }
 return 0;
}
