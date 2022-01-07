
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76x02_dev {int ed_tx_blocked; } ;


 int MT_AUTO_RSP_CFG ;
 int MT_AUTO_RSP_EN ;
 int MT_MAC_SYS_CTRL ;
 int MT_MAC_SYS_CTRL_ENABLE_TX ;
 int MT_TX_PIN_CFG ;
 int MT_TX_PIN_CFG_RXANT ;
 int MT_TX_PIN_CFG_TXANT ;
 int MT_TX_PIN_RFTR_EN ;
 int MT_TX_PIN_TRSW_EN ;
 int mt76_clear (struct mt76x02_dev*,int ,int) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76_set (struct mt76x02_dev*,int ,int) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;

__attribute__((used)) static void
mt76x02_edcca_tx_enable(struct mt76x02_dev *dev, bool enable)
{
 if (enable) {
  u32 data;

  mt76_set(dev, MT_MAC_SYS_CTRL, MT_MAC_SYS_CTRL_ENABLE_TX);
  mt76_set(dev, MT_AUTO_RSP_CFG, MT_AUTO_RSP_EN);

  data = mt76_rr(dev, MT_TX_PIN_CFG);
  data |= MT_TX_PIN_CFG_TXANT |
   MT_TX_PIN_CFG_RXANT |
   MT_TX_PIN_RFTR_EN |
   MT_TX_PIN_TRSW_EN;
  mt76_wr(dev, MT_TX_PIN_CFG, data);
 } else {
  mt76_clear(dev, MT_MAC_SYS_CTRL, MT_MAC_SYS_CTRL_ENABLE_TX);
  mt76_clear(dev, MT_AUTO_RSP_CFG, MT_AUTO_RSP_EN);

  mt76_clear(dev, MT_TX_PIN_CFG, MT_TX_PIN_CFG_TXANT);
  mt76_clear(dev, MT_TX_PIN_CFG, MT_TX_PIN_CFG_RXANT);
 }
 dev->ed_tx_blocked = !enable;
}
