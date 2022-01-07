
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76x02_dev {int dummy; } ;


 int MT_WPDMA_GLO_CFG ;
 int MT_WPDMA_GLO_CFG_BIG_ENDIAN ;
 int MT_WPDMA_GLO_CFG_DMA_BURST_SIZE ;
 int MT_WPDMA_GLO_CFG_HDR_SEG_LEN ;
 int MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;

void mt76x02_dma_disable(struct mt76x02_dev *dev)
{
 u32 val = mt76_rr(dev, MT_WPDMA_GLO_CFG);

 val &= MT_WPDMA_GLO_CFG_DMA_BURST_SIZE |
        MT_WPDMA_GLO_CFG_BIG_ENDIAN |
        MT_WPDMA_GLO_CFG_HDR_SEG_LEN;
 val |= MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE;
 mt76_wr(dev, MT_WPDMA_GLO_CFG, val);
}
