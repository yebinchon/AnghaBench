
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int timer_work; } ;


 int MEI_STALL_TIMER_FREQ ;
 int schedule_delayed_work (int *,int ) ;

void mei_schedule_stall_timer(struct mei_device *dev)
{
 schedule_delayed_work(&dev->timer_work, MEI_STALL_TIMER_FREQ);
}
