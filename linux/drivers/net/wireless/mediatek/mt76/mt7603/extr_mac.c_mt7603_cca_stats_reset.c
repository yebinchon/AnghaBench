
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7603_dev {int dummy; } ;


 int MT_PHYCTRL (int) ;
 int MT_PHYCTRL_2_STATUS_EN ;
 int MT_PHYCTRL_2_STATUS_RESET ;
 int mt76_clear (struct mt7603_dev*,int ,int ) ;
 int mt76_set (struct mt7603_dev*,int ,int ) ;

void mt7603_cca_stats_reset(struct mt7603_dev *dev)
{
 mt76_set(dev, MT_PHYCTRL(2), MT_PHYCTRL_2_STATUS_RESET);
 mt76_clear(dev, MT_PHYCTRL(2), MT_PHYCTRL_2_STATUS_RESET);
 mt76_set(dev, MT_PHYCTRL(2), MT_PHYCTRL_2_STATUS_EN);
}
