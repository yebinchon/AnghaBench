
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7603_dev {int dummy; } ;


 int MT_WPDMA_GLO_CFG ;
 int MT_WPDMA_GLO_CFG_RX_DMA_BUSY ;
 int mt7603_rx_fifo_busy (struct mt7603_dev*) ;
 int mt76_rr (struct mt7603_dev*,int ) ;

__attribute__((used)) static bool mt7603_rx_dma_busy(struct mt7603_dev *dev)
{
 if (!(mt76_rr(dev, MT_WPDMA_GLO_CFG) & MT_WPDMA_GLO_CFG_RX_DMA_BUSY))
  return 0;

 return mt7603_rx_fifo_busy(dev);
}
