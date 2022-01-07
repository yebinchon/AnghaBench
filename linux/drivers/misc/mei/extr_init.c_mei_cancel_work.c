
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int timer_work; int bus_rescan_work; int reset_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;

void mei_cancel_work(struct mei_device *dev)
{
 cancel_work_sync(&dev->reset_work);
 cancel_work_sync(&dev->bus_rescan_work);

 cancel_delayed_work_sync(&dev->timer_work);
}
