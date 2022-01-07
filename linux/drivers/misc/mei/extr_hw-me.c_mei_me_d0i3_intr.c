
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_me_hw {scalar_t__ pg_state; } ;
struct mei_device {scalar_t__ pg_event; scalar_t__ hbm_state; int dev; int wait_pg; } ;


 int H_D0I3C_IS ;
 int H_IS ;
 scalar_t__ MEI_HBM_IDLE ;
 scalar_t__ MEI_PG_EVENT_INTR_RECEIVED ;
 scalar_t__ MEI_PG_EVENT_INTR_WAIT ;
 scalar_t__ MEI_PG_OFF ;
 scalar_t__ MEI_PG_ON ;
 int dev_dbg (int ,char*) ;
 int mei_hbm_pg_resume (struct mei_device*) ;
 int mei_me_host_set_ready (struct mei_device*) ;
 struct mei_me_hw* to_me_hw (struct mei_device*) ;
 int wake_up (int *) ;

__attribute__((used)) static void mei_me_d0i3_intr(struct mei_device *dev, u32 intr_source)
{
 struct mei_me_hw *hw = to_me_hw(dev);

 if (dev->pg_event == MEI_PG_EVENT_INTR_WAIT &&
     (intr_source & H_D0I3C_IS)) {
  dev->pg_event = MEI_PG_EVENT_INTR_RECEIVED;
  if (hw->pg_state == MEI_PG_ON) {
   hw->pg_state = MEI_PG_OFF;
   if (dev->hbm_state != MEI_HBM_IDLE) {




    dev_dbg(dev->dev, "d0i3 set host ready\n");
    mei_me_host_set_ready(dev);
   }
  } else {
   hw->pg_state = MEI_PG_ON;
  }

  wake_up(&dev->wait_pg);
 }

 if (hw->pg_state == MEI_PG_ON && (intr_source & H_IS)) {





  dev_dbg(dev->dev, "d0i3 want resume\n");
  mei_hbm_pg_resume(dev);
 }
}
