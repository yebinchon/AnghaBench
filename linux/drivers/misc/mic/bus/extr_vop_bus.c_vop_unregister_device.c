
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_device {int dev; } ;


 int device_unregister (int *) ;

void vop_unregister_device(struct vop_device *dev)
{
 device_unregister(&dev->dev);
}
