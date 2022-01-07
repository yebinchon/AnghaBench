
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int pre_tbtt_work; int pre_tbtt_timer; } ;


 int cancel_work_sync (int *) ;
 scalar_t__ hrtimer_active (int *) ;
 int hrtimer_cancel (int *) ;

__attribute__((used)) static void mt76x02u_stop_pre_tbtt_timer(struct mt76x02_dev *dev)
{
 do {
  hrtimer_cancel(&dev->pre_tbtt_timer);
  cancel_work_sync(&dev->pre_tbtt_work);

 } while (hrtimer_active(&dev->pre_tbtt_timer));
}
