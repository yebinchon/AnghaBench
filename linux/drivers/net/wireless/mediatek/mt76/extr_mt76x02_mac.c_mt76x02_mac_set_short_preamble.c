
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;


 int MT_AUTO_RSP_CFG ;
 int MT_AUTO_RSP_PREAMB_SHORT ;
 int mt76_clear (struct mt76x02_dev*,int ,int ) ;
 int mt76_set (struct mt76x02_dev*,int ,int ) ;

void mt76x02_mac_set_short_preamble(struct mt76x02_dev *dev, bool enable)
{
 if (enable)
  mt76_set(dev, MT_AUTO_RSP_CFG, MT_AUTO_RSP_PREAMB_SHORT);
 else
  mt76_clear(dev, MT_AUTO_RSP_CFG, MT_AUTO_RSP_PREAMB_SHORT);
}
