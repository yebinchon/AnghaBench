
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {scalar_t__ pg_event; int wait_pg; int dev; } ;


 int EPROTO ;
 scalar_t__ MEI_PG_EVENT_RECEIVED ;
 scalar_t__ MEI_PG_EVENT_WAIT ;
 scalar_t__ MEI_PG_OFF ;
 int dev_err (int ,char*,int ,scalar_t__) ;
 scalar_t__ mei_pg_state (struct mei_device*) ;
 int mei_pg_state_str (scalar_t__) ;
 int wake_up (int *) ;

__attribute__((used)) static int mei_hbm_pg_enter_res(struct mei_device *dev)
{
 if (mei_pg_state(dev) != MEI_PG_OFF ||
     dev->pg_event != MEI_PG_EVENT_WAIT) {
  dev_err(dev->dev, "hbm: pg entry response: state mismatch [%s, %d]\n",
   mei_pg_state_str(mei_pg_state(dev)), dev->pg_event);
  return -EPROTO;
 }

 dev->pg_event = MEI_PG_EVENT_RECEIVED;
 wake_up(&dev->wait_pg);

 return 0;
}
