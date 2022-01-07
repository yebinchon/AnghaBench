
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ beacon_mask; } ;
struct mt76x02_dev {int pre_tbtt_timer; TYPE_1__ mt76; } ;


 int hrtimer_active (int *) ;
 int mt76x02u_start_pre_tbtt_timer (struct mt76x02_dev*) ;
 int mt76x02u_stop_pre_tbtt_timer (struct mt76x02_dev*) ;

__attribute__((used)) static void mt76x02u_pre_tbtt_enable(struct mt76x02_dev *dev, bool en)
{
 if (en && dev->mt76.beacon_mask &&
     !hrtimer_active(&dev->pre_tbtt_timer))
  mt76x02u_start_pre_tbtt_timer(dev);
 if (!en)
  mt76x02u_stop_pre_tbtt_timer(dev);
}
