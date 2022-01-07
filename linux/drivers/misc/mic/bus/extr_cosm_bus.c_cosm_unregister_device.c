
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cosm_device {int index; int dev; } ;


 int cosm_index_ida ;
 int device_unregister (int *) ;
 int ida_simple_remove (int *,int) ;

void cosm_unregister_device(struct cosm_device *dev)
{
 int index = dev->index;

 device_unregister(&dev->dev);
 ida_simple_remove(&cosm_index_ida, index);
}
