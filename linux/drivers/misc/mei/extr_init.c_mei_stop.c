
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int device_lock; int dev; } ;


 int MEI_DEV_DISABLED ;
 int MEI_DEV_POWER_DOWN ;
 int dev_dbg (int ,char*) ;
 int mei_cancel_work (struct mei_device*) ;
 int mei_cl_bus_remove_devices (struct mei_device*) ;
 int mei_clear_interrupts (struct mei_device*) ;
 int mei_reset (struct mei_device*) ;
 int mei_set_devstate (struct mei_device*,int ) ;
 int mei_synchronize_irq (struct mei_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mei_stop(struct mei_device *dev)
{
 dev_dbg(dev->dev, "stopping the device.\n");

 mutex_lock(&dev->device_lock);
 mei_set_devstate(dev, MEI_DEV_POWER_DOWN);
 mutex_unlock(&dev->device_lock);
 mei_cl_bus_remove_devices(dev);

 mei_cancel_work(dev);

 mei_clear_interrupts(dev);
 mei_synchronize_irq(dev);

 mutex_lock(&dev->device_lock);

 mei_reset(dev);

 mei_set_devstate(dev, MEI_DEV_DISABLED);

 mutex_unlock(&dev->device_lock);
}
