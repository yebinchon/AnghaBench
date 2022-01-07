
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct mei_device {TYPE_1__ cdev; } ;


 int cdev_del (TYPE_1__*) ;
 int device_destroy (int ,int) ;
 int mei_class ;
 int mei_dbgfs_deregister (struct mei_device*) ;
 int mei_minor_free (struct mei_device*) ;

void mei_deregister(struct mei_device *dev)
{
 int devno;

 devno = dev->cdev.dev;
 cdev_del(&dev->cdev);

 mei_dbgfs_deregister(dev);

 device_destroy(mei_class, devno);

 mei_minor_free(dev);
}
