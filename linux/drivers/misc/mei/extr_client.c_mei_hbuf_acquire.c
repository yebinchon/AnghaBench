
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int hbuf_is_ready; int dev; } ;


 scalar_t__ MEI_PG_ON ;
 int dev_dbg (int ,char*) ;
 scalar_t__ mei_pg_in_transition (struct mei_device*) ;
 scalar_t__ mei_pg_state (struct mei_device*) ;

bool mei_hbuf_acquire(struct mei_device *dev)
{
 if (mei_pg_state(dev) == MEI_PG_ON ||
     mei_pg_in_transition(dev)) {
  dev_dbg(dev->dev, "device is in pg\n");
  return 0;
 }

 if (!dev->hbuf_is_ready) {
  dev_dbg(dev->dev, "hbuf is not ready\n");
  return 0;
 }

 dev->hbuf_is_ready = 0;

 return 1;
}
