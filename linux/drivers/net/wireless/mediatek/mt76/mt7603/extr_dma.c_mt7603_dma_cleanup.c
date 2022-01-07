
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_tasklet; } ;
struct mt7603_dev {TYPE_1__ mt76; } ;


 int MT_WPDMA_GLO_CFG ;
 int MT_WPDMA_GLO_CFG_RX_DMA_EN ;
 int MT_WPDMA_GLO_CFG_TX_DMA_EN ;
 int MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE ;
 int mt76_clear (struct mt7603_dev*,int ,int) ;
 int mt76_dma_cleanup (TYPE_1__*) ;
 int tasklet_kill (int *) ;

void mt7603_dma_cleanup(struct mt7603_dev *dev)
{
 mt76_clear(dev, MT_WPDMA_GLO_CFG,
     MT_WPDMA_GLO_CFG_TX_DMA_EN |
     MT_WPDMA_GLO_CFG_RX_DMA_EN |
     MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE);

 tasklet_kill(&dev->mt76.tx_tasklet);
 mt76_dma_cleanup(&dev->mt76);
}
