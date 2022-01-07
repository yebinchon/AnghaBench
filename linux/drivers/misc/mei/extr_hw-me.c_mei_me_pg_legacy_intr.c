
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_me_hw {int pg_state; } ;
struct mei_device {scalar_t__ pg_event; int wait_pg; } ;


 scalar_t__ MEI_PG_EVENT_INTR_RECEIVED ;
 scalar_t__ MEI_PG_EVENT_INTR_WAIT ;
 int MEI_PG_OFF ;
 struct mei_me_hw* to_me_hw (struct mei_device*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void mei_me_pg_legacy_intr(struct mei_device *dev)
{
 struct mei_me_hw *hw = to_me_hw(dev);

 if (dev->pg_event != MEI_PG_EVENT_INTR_WAIT)
  return;

 dev->pg_event = MEI_PG_EVENT_INTR_RECEIVED;
 hw->pg_state = MEI_PG_OFF;
 if (waitqueue_active(&dev->wait_pg))
  wake_up(&dev->wait_pg);
}
