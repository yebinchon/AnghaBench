
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int devno; int udev; int v4l2_dev; } ;


 int clear_bit (int ,int *) ;
 int cx231xx_dev_uninit (struct cx231xx*) ;
 int cx231xx_devused ;
 int cx231xx_ir_exit (struct cx231xx*) ;
 int cx231xx_release_analog_resources (struct cx231xx*) ;
 int cx231xx_remove_from_devlist (struct cx231xx*) ;
 int cx231xx_unregister_media_device (struct cx231xx*) ;
 int usb_put_dev (int ) ;
 int v4l2_device_unregister (int *) ;

void cx231xx_release_resources(struct cx231xx *dev)
{
 cx231xx_ir_exit(dev);

 cx231xx_release_analog_resources(dev);

 cx231xx_remove_from_devlist(dev);


 cx231xx_dev_uninit(dev);


 v4l2_device_unregister(&dev->v4l2_dev);

 cx231xx_unregister_media_device(dev);

 usb_put_dev(dev->udev);


 clear_bit(dev->devno, &cx231xx_devused);
}
