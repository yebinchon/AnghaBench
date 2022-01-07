
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct em28xx {scalar_t__ ts; int lock; int devno; scalar_t__ def_i2c_bus; int intf; } ;


 scalar_t__ PRIMARY_TS ;
 int clear_bit (int ,int ) ;
 int em28xx_devused ;
 int em28xx_i2c_unregister (struct em28xx*,int) ;
 int em28xx_unregister_media_device (struct em28xx*) ;
 struct usb_device* interface_to_usbdev (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_put_dev (struct usb_device*) ;

__attribute__((used)) static void em28xx_release_resources(struct em28xx *dev)
{
 struct usb_device *udev = interface_to_usbdev(dev->intf);



 mutex_lock(&dev->lock);

 em28xx_unregister_media_device(dev);

 if (dev->def_i2c_bus)
  em28xx_i2c_unregister(dev, 1);
 em28xx_i2c_unregister(dev, 0);

 if (dev->ts == PRIMARY_TS)
  usb_put_dev(udev);


 clear_bit(dev->devno, em28xx_devused);

 mutex_unlock(&dev->lock);
}
