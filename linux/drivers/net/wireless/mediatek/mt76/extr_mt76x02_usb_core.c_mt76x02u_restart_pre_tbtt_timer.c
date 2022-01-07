
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {unsigned long long beacon_int; int dev; } ;
struct mt76x02_dev {int pre_tbtt_timer; TYPE_1__ mt76; } ;


 int HRTIMER_MODE_REL ;
 int MT_TBTT_TIMER ;
 int MT_TBTT_TIMER_VAL ;
 int MT_TSF_TIMER_DW0 ;
 int MT_TSF_TIMER_DW1 ;
 int PRE_TBTT_USEC ;
 int dev_dbg (int ,char*,int,int) ;
 int hrtimer_start (int *,int,int ) ;
 int mt76_get_field (struct mt76x02_dev*,int ,int ) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;

__attribute__((used)) static void mt76x02u_restart_pre_tbtt_timer(struct mt76x02_dev *dev)
{
 u32 tbtt, dw0, dw1;
 u64 tsf, time;


 tbtt = mt76_get_field(dev, MT_TBTT_TIMER, MT_TBTT_TIMER_VAL);
 tbtt *= 32;

 dw0 = mt76_rr(dev, MT_TSF_TIMER_DW0);
 dw1 = mt76_rr(dev, MT_TSF_TIMER_DW1);
 tsf = (u64)dw0 << 32 | dw1;
 dev_dbg(dev->mt76.dev, "TSF: %llu us TBTT %u us\n", tsf, tbtt);


 time = ((1000000000ull * dev->mt76.beacon_int) >> 10);


 if (tbtt < PRE_TBTT_USEC)
  time -= (PRE_TBTT_USEC - tbtt) * 1000ull;
 else
  time += (tbtt - PRE_TBTT_USEC) * 1000ull;

 hrtimer_start(&dev->pre_tbtt_timer, time, HRTIMER_MODE_REL);
}
