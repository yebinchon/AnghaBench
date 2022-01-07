
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {scalar_t__ dev_state; int device_lock; } ;
struct mei_cl {scalar_t__ writing_state; int tx_wait; struct mei_device* dev; } ;
struct file {struct mei_cl* private_data; } ;
typedef int loff_t ;


 int EINTR ;
 int ENODEV ;
 scalar_t__ MEI_DEV_ENABLED ;
 scalar_t__ MEI_WRITE_COMPLETE ;
 scalar_t__ WARN_ON (int) ;
 int current ;
 int mei_cl_is_connected (struct mei_cl*) ;
 scalar_t__ mei_cl_is_write_queued (struct mei_cl*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ signal_pending (int ) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int mei_fsync(struct file *fp, loff_t start, loff_t end, int datasync)
{
 struct mei_cl *cl = fp->private_data;
 struct mei_device *dev;
 int rets;

 if (WARN_ON(!cl || !cl->dev))
  return -ENODEV;

 dev = cl->dev;

 mutex_lock(&dev->device_lock);

 if (dev->dev_state != MEI_DEV_ENABLED || !mei_cl_is_connected(cl)) {
  rets = -ENODEV;
  goto out;
 }

 while (mei_cl_is_write_queued(cl)) {
  mutex_unlock(&dev->device_lock);
  rets = wait_event_interruptible(cl->tx_wait,
    cl->writing_state == MEI_WRITE_COMPLETE ||
    !mei_cl_is_connected(cl));
  mutex_lock(&dev->device_lock);
  if (rets) {
   if (signal_pending(current))
    rets = -EINTR;
   goto out;
  }
  if (!mei_cl_is_connected(cl)) {
   rets = -ENODEV;
   goto out;
  }
 }
 rets = 0;
out:
 mutex_unlock(&dev->device_lock);
 return rets;
}
