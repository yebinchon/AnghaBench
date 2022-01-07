
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_dev {int dummy; } ;


 int au0828_i2c_unregister (struct au0828_dev*) ;
 int au0828_unregister_media_device (struct au0828_dev*) ;
 int kfree (struct au0828_dev*) ;

void au0828_usb_release(struct au0828_dev *dev)
{
 au0828_unregister_media_device(dev);


 au0828_i2c_unregister(dev);

 kfree(dev);
}
