
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {scalar_t__ hbm_state; int dev; int device_lock; int wait_hbm_start; } ;


 int ETIME ;
 scalar_t__ MEI_HBM_IDLE ;
 scalar_t__ MEI_HBM_STARTING ;
 int MEI_HBM_TIMEOUT ;
 int dev_err (int ,char*) ;
 int mei_secs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_timeout (int ,int,int ) ;

int mei_hbm_start_wait(struct mei_device *dev)
{
 int ret;

 if (dev->hbm_state > MEI_HBM_STARTING)
  return 0;

 mutex_unlock(&dev->device_lock);
 ret = wait_event_timeout(dev->wait_hbm_start,
   dev->hbm_state != MEI_HBM_STARTING,
   mei_secs_to_jiffies(MEI_HBM_TIMEOUT));
 mutex_lock(&dev->device_lock);

 if (ret == 0 && (dev->hbm_state <= MEI_HBM_STARTING)) {
  dev->hbm_state = MEI_HBM_IDLE;
  dev_err(dev->dev, "waiting for mei start failed\n");
  return -ETIME;
 }
 return 0;
}
