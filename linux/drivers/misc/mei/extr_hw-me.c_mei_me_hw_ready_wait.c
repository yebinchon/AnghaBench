
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int recvd_hw_ready; int dev; int device_lock; int wait_hw_ready; } ;


 int ETIME ;
 int MEI_HW_READY_TIMEOUT ;
 int dev_err (int ,char*) ;
 int mei_me_hw_reset_release (struct mei_device*) ;
 int mei_secs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int mei_me_hw_ready_wait(struct mei_device *dev)
{
 mutex_unlock(&dev->device_lock);
 wait_event_timeout(dev->wait_hw_ready,
   dev->recvd_hw_ready,
   mei_secs_to_jiffies(MEI_HW_READY_TIMEOUT));
 mutex_lock(&dev->device_lock);
 if (!dev->recvd_hw_ready) {
  dev_err(dev->dev, "wait hw ready failed\n");
  return -ETIME;
 }

 mei_me_hw_reset_release(dev);
 dev->recvd_hw_ready = 0;
 return 0;
}
