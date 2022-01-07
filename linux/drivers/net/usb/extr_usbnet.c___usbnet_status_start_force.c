
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {int interrupt_mutex; TYPE_1__* udev; int interrupt; scalar_t__ interrupt_count; } ;
typedef int gfp_t ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int __usbnet_status_start_force(struct usbnet *dev, gfp_t mem_flags)
{
 int ret = 0;

 mutex_lock(&dev->interrupt_mutex);
 if (dev->interrupt_count) {
  ret = usb_submit_urb(dev->interrupt, mem_flags);
  dev_dbg(&dev->udev->dev,
   "submitted interrupt URB for resume\n");
 }
 mutex_unlock(&dev->interrupt_mutex);
 return ret;
}
