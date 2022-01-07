
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int recvd_hw_ready; int dev; int device_lock; int wait_hw_ready; } ;


 int ETIME ;
 int SEC_RESET_WAIT_TIMEOUT ;
 int dev_err (int ,char*) ;
 scalar_t__ mei_txe_hw_is_ready (struct mei_device*) ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int mei_txe_readiness_wait(struct mei_device *dev)
{
 if (mei_txe_hw_is_ready(dev))
  return 0;

 mutex_unlock(&dev->device_lock);
 wait_event_timeout(dev->wait_hw_ready, dev->recvd_hw_ready,
   msecs_to_jiffies(SEC_RESET_WAIT_TIMEOUT));
 mutex_lock(&dev->device_lock);
 if (!dev->recvd_hw_ready) {
  dev_err(dev->dev, "wait for readiness failed\n");
  return -ETIME;
 }

 dev->recvd_hw_ready = 0;
 return 0;
}
