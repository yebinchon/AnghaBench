
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7615_dev {int dummy; } ;


 int BIT (int) ;
 int GENMASK (int,int) ;
 int MT_WF_PHY_R0_B0_PHYMUX_5 ;
 int mt76_clear (struct mt7615_dev*,int ,int ) ;
 int mt76_set (struct mt7615_dev*,int ,int) ;

void mt7615_mac_cca_stats_reset(struct mt7615_dev *dev)
{
 mt76_clear(dev, MT_WF_PHY_R0_B0_PHYMUX_5, GENMASK(22, 20));
 mt76_set(dev, MT_WF_PHY_R0_B0_PHYMUX_5, BIT(22) | BIT(20));
}
