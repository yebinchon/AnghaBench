
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7603_dev {int dummy; } ;


 int FIELD_PREP (int ,int) ;
 int MT_INT_RX_DONE_ALL ;
 int MT_INT_TX_DONE_ALL ;
 int MT_WPDMA_GLO_CFG ;
 int MT_WPDMA_GLO_CFG_DMA_BURST_SIZE ;
 int MT_WPDMA_GLO_CFG_RX_DMA_EN ;
 int MT_WPDMA_GLO_CFG_TX_DMA_EN ;
 int MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE ;
 int mt7603_irq_enable (struct mt7603_dev*,int) ;
 int mt7603_mac_start (struct mt7603_dev*) ;
 int mt76_set (struct mt7603_dev*,int ,int) ;
 int usleep_range (int,int) ;
 int wait_for_wpdma (struct mt7603_dev*) ;

void mt7603_mac_dma_start(struct mt7603_dev *dev)
{
 mt7603_mac_start(dev);

 wait_for_wpdma(dev);
 usleep_range(50, 100);

 mt76_set(dev, MT_WPDMA_GLO_CFG,
   (MT_WPDMA_GLO_CFG_TX_DMA_EN |
    MT_WPDMA_GLO_CFG_RX_DMA_EN |
    FIELD_PREP(MT_WPDMA_GLO_CFG_DMA_BURST_SIZE, 3) |
    MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE));

 mt7603_irq_enable(dev, MT_INT_RX_DONE_ALL | MT_INT_TX_DONE_ALL);
}
