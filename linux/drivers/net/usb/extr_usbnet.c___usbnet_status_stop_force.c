
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {int interrupt_mutex; TYPE_1__* udev; scalar_t__ interrupt; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_kill_urb (scalar_t__) ;

__attribute__((used)) static void __usbnet_status_stop_force(struct usbnet *dev)
{
 if (dev->interrupt) {
  mutex_lock(&dev->interrupt_mutex);
  usb_kill_urb(dev->interrupt);
  dev_dbg(&dev->udev->dev, "killed interrupt URB for suspend\n");
  mutex_unlock(&dev->interrupt_mutex);
 }
}
