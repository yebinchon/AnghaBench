
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int beacon_int; } ;
struct mt76x02_dev {int tbtt_count; TYPE_1__ mt76; } ;


 int MT_BEACON_TIME_CFG ;
 int MT_BEACON_TIME_CFG_INTVAL ;
 int mt76_rmw_field (struct mt76x02_dev*,int ,int ,int) ;

void
mt76x02_resync_beacon_timer(struct mt76x02_dev *dev)
{
 u32 timer_val = dev->mt76.beacon_int << 4;

 dev->tbtt_count++;





 if (dev->tbtt_count < 63)
  return;






 if (dev->tbtt_count == 63)
  timer_val -= 1;

 mt76_rmw_field(dev, MT_BEACON_TIME_CFG,
         MT_BEACON_TIME_CFG_INTVAL, timer_val);

 if (dev->tbtt_count >= 64)
  dev->tbtt_count = 0;
}
