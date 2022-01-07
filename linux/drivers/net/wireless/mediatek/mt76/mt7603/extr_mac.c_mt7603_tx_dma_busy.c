
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7603_dev {int dummy; } ;


 int BIT (int) ;
 int MT_WPDMA_GLO_CFG ;
 int MT_WPDMA_GLO_CFG_TX_DMA_BUSY ;
 int mt7603_dma_debug (struct mt7603_dev*,int) ;
 int mt76_rr (struct mt7603_dev*,int ) ;

__attribute__((used)) static bool mt7603_tx_dma_busy(struct mt7603_dev *dev)
{
 u32 val;

 if (!(mt76_rr(dev, MT_WPDMA_GLO_CFG) & MT_WPDMA_GLO_CFG_TX_DMA_BUSY))
  return 0;

 val = mt7603_dma_debug(dev, 9);
 return (val & BIT(8)) && (val & 0xf) != 0xf;
}
