
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;


 int MT_BCN_BYPASS_MASK ;
 int MT_BEACON_TIME_CFG ;
 int MT_BEACON_TIME_CFG_BEACON_TX ;
 int MT_BEACON_TIME_CFG_SYNC_MODE ;
 int MT_BEACON_TIME_CFG_TBTT_EN ;
 int MT_BEACON_TIME_CFG_TIMER_EN ;
 int mt76_clear (struct mt76x02_dev*,int ,int) ;
 int mt76_set (struct mt76x02_dev*,int ,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int mt76x02_mac_set_beacon (struct mt76x02_dev*,int,int *) ;
 int mt76x02_set_beacon_offsets (struct mt76x02_dev*) ;

void mt76x02_init_beacon_config(struct mt76x02_dev *dev)
{
 int i;

 mt76_clear(dev, MT_BEACON_TIME_CFG, (MT_BEACON_TIME_CFG_TIMER_EN |
          MT_BEACON_TIME_CFG_TBTT_EN |
          MT_BEACON_TIME_CFG_BEACON_TX));
 mt76_set(dev, MT_BEACON_TIME_CFG, MT_BEACON_TIME_CFG_SYNC_MODE);
 mt76_wr(dev, MT_BCN_BYPASS_MASK, 0xffff);

 for (i = 0; i < 8; i++)
  mt76x02_mac_set_beacon(dev, i, ((void*)0));

 mt76x02_set_beacon_offsets(dev);
}
