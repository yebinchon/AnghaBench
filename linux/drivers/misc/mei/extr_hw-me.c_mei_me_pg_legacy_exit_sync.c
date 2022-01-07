
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_me_hw {int pg_state; } ;
struct mei_device {scalar_t__ pg_event; int device_lock; int wait_pg; } ;


 int ETIME ;
 int MEI_PGI_TIMEOUT ;
 scalar_t__ MEI_PG_EVENT_IDLE ;
 scalar_t__ MEI_PG_EVENT_INTR_RECEIVED ;
 scalar_t__ MEI_PG_EVENT_INTR_WAIT ;
 scalar_t__ MEI_PG_EVENT_RECEIVED ;
 scalar_t__ MEI_PG_EVENT_WAIT ;
 int MEI_PG_ISOLATION_EXIT_RES_CMD ;
 int MEI_PG_OFF ;
 int mei_hbm_pg (struct mei_device*,int ) ;
 int mei_me_pg_unset (struct mei_device*) ;
 unsigned long mei_secs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mei_me_hw* to_me_hw (struct mei_device*) ;
 int wait_event_timeout (int ,int,unsigned long) ;

__attribute__((used)) static int mei_me_pg_legacy_exit_sync(struct mei_device *dev)
{
 struct mei_me_hw *hw = to_me_hw(dev);
 unsigned long timeout = mei_secs_to_jiffies(MEI_PGI_TIMEOUT);
 int ret;

 if (dev->pg_event == MEI_PG_EVENT_RECEIVED)
  goto reply;

 dev->pg_event = MEI_PG_EVENT_WAIT;

 mei_me_pg_unset(dev);

 mutex_unlock(&dev->device_lock);
 wait_event_timeout(dev->wait_pg,
  dev->pg_event == MEI_PG_EVENT_RECEIVED, timeout);
 mutex_lock(&dev->device_lock);

reply:
 if (dev->pg_event != MEI_PG_EVENT_RECEIVED) {
  ret = -ETIME;
  goto out;
 }

 dev->pg_event = MEI_PG_EVENT_INTR_WAIT;
 ret = mei_hbm_pg(dev, MEI_PG_ISOLATION_EXIT_RES_CMD);
 if (ret)
  return ret;

 mutex_unlock(&dev->device_lock);
 wait_event_timeout(dev->wait_pg,
  dev->pg_event == MEI_PG_EVENT_INTR_RECEIVED, timeout);
 mutex_lock(&dev->device_lock);

 if (dev->pg_event == MEI_PG_EVENT_INTR_RECEIVED)
  ret = 0;
 else
  ret = -ETIME;

out:
 dev->pg_event = MEI_PG_EVENT_IDLE;
 hw->pg_state = MEI_PG_OFF;

 return ret;
}
