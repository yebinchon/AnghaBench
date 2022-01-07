
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76x02_dev {int mt76; } ;


 int FIELD_PREP (int ,int) ;
 int MT_MAC_SYS_CTRL ;
 int MT_MAC_SYS_CTRL_ENABLE_TX ;
 int MT_WPDMA_GLO_CFG ;
 int MT_WPDMA_GLO_CFG_DMA_BURST_SIZE ;
 int MT_WPDMA_GLO_CFG_RX_DMA_EN ;
 int MT_WPDMA_GLO_CFG_TX_DMA_EN ;
 int MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE ;
 int mt76_clear (struct mt76x02_dev*,int ,int ) ;
 int mt76_set (struct mt76x02_dev*,int ,int) ;
 int mt76_wr (struct mt76x02_dev*,int ,int ) ;
 int mt76x02_wait_for_wpdma (int *,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mt76x02_dma_enable(struct mt76x02_dev *dev)
{
 u32 val;

 mt76_wr(dev, MT_MAC_SYS_CTRL, MT_MAC_SYS_CTRL_ENABLE_TX);
 mt76x02_wait_for_wpdma(&dev->mt76, 1000);
 usleep_range(50, 100);

 val = FIELD_PREP(MT_WPDMA_GLO_CFG_DMA_BURST_SIZE, 3) |
       MT_WPDMA_GLO_CFG_TX_DMA_EN |
       MT_WPDMA_GLO_CFG_RX_DMA_EN;
 mt76_set(dev, MT_WPDMA_GLO_CFG, val);
 mt76_clear(dev, MT_WPDMA_GLO_CFG,
     MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE);
}
