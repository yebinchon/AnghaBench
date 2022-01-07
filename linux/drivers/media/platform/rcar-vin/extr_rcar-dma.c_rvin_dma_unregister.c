
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvin_dev {int v4l2_dev; int lock; } ;


 int mutex_destroy (int *) ;
 int v4l2_device_unregister (int *) ;

void rvin_dma_unregister(struct rvin_dev *vin)
{
 mutex_destroy(&vin->lock);

 v4l2_device_unregister(&vin->v4l2_dev);
}
