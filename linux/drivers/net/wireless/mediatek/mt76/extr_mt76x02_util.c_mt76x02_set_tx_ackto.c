
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mt76x02_dev {int coverage_class; scalar_t__ slottime; } ;


 int MT_BKOFF_SLOT_CFG ;
 int MT_BKOFF_SLOT_CFG_SLOTTIME ;
 int MT_TX_TIMEOUT_CFG ;
 int MT_TX_TIMEOUT_CFG_ACKTO ;
 int MT_XIFS_TIME_CFG ;
 int MT_XIFS_TIME_CFG_OFDM_SIFS ;
 scalar_t__ mt76_get_field (struct mt76x02_dev*,int ,int ) ;
 int mt76_rmw_field (struct mt76x02_dev*,int ,int ,scalar_t__) ;

void mt76x02_set_tx_ackto(struct mt76x02_dev *dev)
{
 u8 ackto, sifs, slottime = dev->slottime;


 slottime += 3 * dev->coverage_class;
 mt76_rmw_field(dev, MT_BKOFF_SLOT_CFG,
         MT_BKOFF_SLOT_CFG_SLOTTIME, slottime);

 sifs = mt76_get_field(dev, MT_XIFS_TIME_CFG,
         MT_XIFS_TIME_CFG_OFDM_SIFS);

 ackto = slottime + sifs;
 mt76_rmw_field(dev, MT_TX_TIMEOUT_CFG,
         MT_TX_TIMEOUT_CFG_ACKTO, ackto);
}
