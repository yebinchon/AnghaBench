
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;


 int MT_TX_BAND_CFG ;
 int MT_TX_BAND_CFG_2G ;
 int MT_TX_BAND_CFG_5G ;
 int MT_TX_BAND_CFG_UPPER_40M ;


 int mt76_clear (struct mt76x02_dev*,int ,int ) ;
 int mt76_rmw_field (struct mt76x02_dev*,int ,int ,int) ;
 int mt76_set (struct mt76x02_dev*,int ,int ) ;

void mt76x02_phy_set_band(struct mt76x02_dev *dev, int band,
     bool primary_upper)
{
 switch (band) {
 case 129:
  mt76_set(dev, MT_TX_BAND_CFG, MT_TX_BAND_CFG_2G);
  mt76_clear(dev, MT_TX_BAND_CFG, MT_TX_BAND_CFG_5G);
  break;
 case 128:
  mt76_clear(dev, MT_TX_BAND_CFG, MT_TX_BAND_CFG_2G);
  mt76_set(dev, MT_TX_BAND_CFG, MT_TX_BAND_CFG_5G);
  break;
 }

 mt76_rmw_field(dev, MT_TX_BAND_CFG, MT_TX_BAND_CFG_UPPER_40M,
         primary_upper);
}
