
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {scalar_t__ dev_state; int reset_work; int dev; int device_lock; scalar_t__ reset_count; } ;


 int ENODEV ;
 scalar_t__ MEI_DEV_DISABLED ;
 int MEI_DEV_POWER_UP ;
 int dev_err (int ,char*,int) ;
 int mei_reset (struct mei_device*) ;
 int mei_set_devstate (struct mei_device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;

int mei_restart(struct mei_device *dev)
{
 int err;

 mutex_lock(&dev->device_lock);

 mei_set_devstate(dev, MEI_DEV_POWER_UP);
 dev->reset_count = 0;

 err = mei_reset(dev);

 mutex_unlock(&dev->device_lock);

 if (err == -ENODEV || dev->dev_state == MEI_DEV_DISABLED) {
  dev_err(dev->dev, "device disabled = %d\n", err);
  return -ENODEV;
 }


 if (err)
  schedule_work(&dev->reset_work);


 return 0;
}
