
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_me_hw {int pg_state; } ;
struct mei_device {scalar_t__ pg_event; int dev; int device_lock; int wait_pg; } ;


 int ETIME ;
 int H_D0I3C_CIP ;
 int H_D0I3C_I3 ;
 int MEI_D0I3_TIMEOUT ;
 int MEI_PGI_TIMEOUT ;
 scalar_t__ MEI_PG_EVENT_IDLE ;
 scalar_t__ MEI_PG_EVENT_INTR_RECEIVED ;
 scalar_t__ MEI_PG_EVENT_INTR_WAIT ;
 scalar_t__ MEI_PG_EVENT_RECEIVED ;
 scalar_t__ MEI_PG_EVENT_WAIT ;
 int MEI_PG_ISOLATION_ENTRY_REQ_CMD ;
 int MEI_PG_ON ;
 int dev_dbg (int ,char*,...) ;
 int mei_hbm_pg (struct mei_device*,int ) ;
 int mei_me_d0i3_set (struct mei_device*,int) ;
 int mei_me_d0i3c_read (struct mei_device*) ;
 unsigned long mei_secs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mei_me_hw* to_me_hw (struct mei_device*) ;
 int wait_event_timeout (int ,int,unsigned long) ;

__attribute__((used)) static int mei_me_d0i3_enter_sync(struct mei_device *dev)
{
 struct mei_me_hw *hw = to_me_hw(dev);
 unsigned long d0i3_timeout = mei_secs_to_jiffies(MEI_D0I3_TIMEOUT);
 unsigned long pgi_timeout = mei_secs_to_jiffies(MEI_PGI_TIMEOUT);
 int ret;
 u32 reg;

 reg = mei_me_d0i3c_read(dev);
 if (reg & H_D0I3C_I3) {

  dev_dbg(dev->dev, "d0i3 set not needed\n");
  ret = 0;
  goto on;
 }


 dev->pg_event = MEI_PG_EVENT_WAIT;

 ret = mei_hbm_pg(dev, MEI_PG_ISOLATION_ENTRY_REQ_CMD);
 if (ret)

  goto out;

 mutex_unlock(&dev->device_lock);
 wait_event_timeout(dev->wait_pg,
  dev->pg_event == MEI_PG_EVENT_RECEIVED, pgi_timeout);
 mutex_lock(&dev->device_lock);

 if (dev->pg_event != MEI_PG_EVENT_RECEIVED) {
  ret = -ETIME;
  goto out;
 }


 dev->pg_event = MEI_PG_EVENT_INTR_WAIT;

 reg = mei_me_d0i3_set(dev, 1);
 if (!(reg & H_D0I3C_CIP)) {
  dev_dbg(dev->dev, "d0i3 enter wait not needed\n");
  ret = 0;
  goto on;
 }

 mutex_unlock(&dev->device_lock);
 wait_event_timeout(dev->wait_pg,
  dev->pg_event == MEI_PG_EVENT_INTR_RECEIVED, d0i3_timeout);
 mutex_lock(&dev->device_lock);

 if (dev->pg_event != MEI_PG_EVENT_INTR_RECEIVED) {
  reg = mei_me_d0i3c_read(dev);
  if (!(reg & H_D0I3C_I3)) {
   ret = -ETIME;
   goto out;
  }
 }

 ret = 0;
on:
 hw->pg_state = MEI_PG_ON;
out:
 dev->pg_event = MEI_PG_EVENT_IDLE;
 dev_dbg(dev->dev, "d0i3 enter ret = %d\n", ret);
 return ret;
}
