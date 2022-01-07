
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mei_txe_hw {scalar_t__ aliveness; int wait_aliveness_resp; } ;
struct mei_device {int pg_event; int dev; int device_lock; } ;


 int ETIME ;
 int MEI_PG_EVENT_IDLE ;
 int MEI_PG_EVENT_RECEIVED ;
 int SEC_ALIVENESS_WAIT_TIMEOUT ;
 int dev_dbg (int ,char*,int ,scalar_t__,int ) ;
 int dev_warn (int ,char*,long,scalar_t__,int ) ;
 int jiffies_to_msecs (unsigned long const) ;
 void* mei_txe_aliveness_get (struct mei_device*) ;
 unsigned long msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;
 long wait_event_timeout (int ,int,unsigned long const) ;

__attribute__((used)) static int mei_txe_aliveness_wait(struct mei_device *dev, u32 expected)
{
 struct mei_txe_hw *hw = to_txe_hw(dev);
 const unsigned long timeout =
   msecs_to_jiffies(SEC_ALIVENESS_WAIT_TIMEOUT);
 long err;
 int ret;

 hw->aliveness = mei_txe_aliveness_get(dev);
 if (hw->aliveness == expected)
  return 0;

 mutex_unlock(&dev->device_lock);
 err = wait_event_timeout(hw->wait_aliveness_resp,
   dev->pg_event == MEI_PG_EVENT_RECEIVED, timeout);
 mutex_lock(&dev->device_lock);

 hw->aliveness = mei_txe_aliveness_get(dev);
 ret = hw->aliveness == expected ? 0 : -ETIME;

 if (ret)
  dev_warn(dev->dev, "aliveness timed out = %ld aliveness = %d event = %d\n",
   err, hw->aliveness, dev->pg_event);
 else
  dev_dbg(dev->dev, "aliveness settled after = %d msec aliveness = %d event = %d\n",
   jiffies_to_msecs(timeout - err),
   hw->aliveness, dev->pg_event);

 dev->pg_event = MEI_PG_EVENT_IDLE;
 return ret;
}
