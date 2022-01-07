
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mt76x02_dev {int pre_tbtt_timer; int pre_tbtt_work; } ;


 int HRTIMER_MODE_REL ;
 int MT_TBTT_TIMER ;
 int MT_TBTT_TIMER_VAL ;
 int PRE_TBTT_USEC ;
 int hrtimer_start (int *,int,int ) ;
 int mt76_get_field (struct mt76x02_dev*,int ,int ) ;
 int queue_work (int ,int *) ;
 int system_highpri_wq ;

__attribute__((used)) static void mt76x02u_start_pre_tbtt_timer(struct mt76x02_dev *dev)
{
 u64 time;
 u32 tbtt;


 tbtt = mt76_get_field(dev, MT_TBTT_TIMER, MT_TBTT_TIMER_VAL);
 tbtt *= 32;

 if (tbtt <= PRE_TBTT_USEC) {
  queue_work(system_highpri_wq, &dev->pre_tbtt_work);
  return;
 }

 time = (tbtt - PRE_TBTT_USEC) * 1000ull;
 hrtimer_start(&dev->pre_tbtt_timer, time, HRTIMER_MODE_REL);
}
