
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int pg_event; int wait_pg; int dev; } ;


 int EPROTO ;

 void* MEI_PG_EVENT_RECEIVED ;

 scalar_t__ MEI_PG_ON ;
 int WARN (int,char*,int) ;
 int dev_err (int ,char*,int ,int) ;
 int mei_hbm_pg_resume (struct mei_device*) ;
 scalar_t__ mei_pg_state (struct mei_device*) ;
 int mei_pg_state_str (scalar_t__) ;
 int wake_up (int *) ;

__attribute__((used)) static int mei_hbm_pg_exit_res(struct mei_device *dev)
{
 if (mei_pg_state(dev) != MEI_PG_ON ||
     (dev->pg_event != 128 &&
      dev->pg_event != 129)) {
  dev_err(dev->dev, "hbm: pg exit response: state mismatch [%s, %d]\n",
   mei_pg_state_str(mei_pg_state(dev)), dev->pg_event);
  return -EPROTO;
 }

 switch (dev->pg_event) {
 case 128:
  dev->pg_event = MEI_PG_EVENT_RECEIVED;
  wake_up(&dev->wait_pg);
  break;
 case 129:





  dev->pg_event = MEI_PG_EVENT_RECEIVED;
  mei_hbm_pg_resume(dev);
  break;
 default:
  WARN(1, "hbm: pg exit response: unexpected pg event = %d\n",
       dev->pg_event);
  return -EPROTO;
 }

 return 0;
}
