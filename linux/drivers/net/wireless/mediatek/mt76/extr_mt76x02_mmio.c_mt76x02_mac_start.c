
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rxfilter; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int MT_INT_RX_DONE_ALL ;
 int MT_INT_TX_DONE_ALL ;
 int MT_INT_TX_STAT ;
 int MT_MAC_SYS_CTRL ;
 int MT_MAC_SYS_CTRL_ENABLE_RX ;
 int MT_MAC_SYS_CTRL_ENABLE_TX ;
 int MT_RX_FILTR_CFG ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int mt76x02_dma_enable (struct mt76x02_dev*) ;
 int mt76x02_irq_enable (struct mt76x02_dev*,int) ;

void mt76x02_mac_start(struct mt76x02_dev *dev)
{
 mt76x02_dma_enable(dev);
 mt76_wr(dev, MT_RX_FILTR_CFG, dev->mt76.rxfilter);
 mt76_wr(dev, MT_MAC_SYS_CTRL,
  MT_MAC_SYS_CTRL_ENABLE_TX |
  MT_MAC_SYS_CTRL_ENABLE_RX);
 mt76x02_irq_enable(dev,
      MT_INT_RX_DONE_ALL | MT_INT_TX_DONE_ALL |
      MT_INT_TX_STAT);
}
