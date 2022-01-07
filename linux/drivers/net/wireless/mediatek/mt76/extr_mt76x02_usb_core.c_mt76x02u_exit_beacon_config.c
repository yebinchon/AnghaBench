
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int MT76_REMOVED ;
 int MT_BEACON_TIME_CFG ;
 int MT_BEACON_TIME_CFG_BEACON_TX ;
 int MT_BEACON_TIME_CFG_SYNC_MODE ;
 int MT_BEACON_TIME_CFG_TBTT_EN ;
 int MT_BEACON_TIME_CFG_TIMER_EN ;
 int mt76_clear (struct mt76x02_dev*,int ,int) ;
 int mt76x02u_stop_pre_tbtt_timer (struct mt76x02_dev*) ;
 int test_bit (int ,int *) ;

void mt76x02u_exit_beacon_config(struct mt76x02_dev *dev)
{
 if (!test_bit(MT76_REMOVED, &dev->mt76.state))
  mt76_clear(dev, MT_BEACON_TIME_CFG,
      MT_BEACON_TIME_CFG_TIMER_EN |
      MT_BEACON_TIME_CFG_SYNC_MODE |
      MT_BEACON_TIME_CFG_TBTT_EN |
      MT_BEACON_TIME_CFG_BEACON_TX);

 mt76x02u_stop_pre_tbtt_timer(dev);
}
