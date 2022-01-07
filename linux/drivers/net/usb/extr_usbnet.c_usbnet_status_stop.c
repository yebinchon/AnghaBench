
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {scalar_t__ interrupt_count; int interrupt_mutex; TYPE_1__* udev; scalar_t__ interrupt; } ;
struct TYPE_2__ {int dev; } ;


 int WARN_ON (int) ;
 int dev_dbg (int *,char*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_kill_urb (scalar_t__) ;

void usbnet_status_stop(struct usbnet *dev)
{
 if (dev->interrupt) {
  mutex_lock(&dev->interrupt_mutex);
  WARN_ON(dev->interrupt_count == 0);

  if (dev->interrupt_count && --dev->interrupt_count == 0)
   usb_kill_urb(dev->interrupt);

  dev_dbg(&dev->udev->dev,
   "decremented interrupt URB count to %d\n",
   dev->interrupt_count);
  mutex_unlock(&dev->interrupt_mutex);
 }
}
