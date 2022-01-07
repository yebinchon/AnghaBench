
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7603_dev {int dummy; } ;


 int MT_WPDMA_GLO_CFG ;
 int MT_WPDMA_GLO_CFG_RX_DMA_BUSY ;
 int MT_WPDMA_GLO_CFG_TX_DMA_BUSY ;
 int mt76_poll (struct mt7603_dev*,int ,int,int ,int) ;

__attribute__((used)) static bool
wait_for_wpdma(struct mt7603_dev *dev)
{
 return mt76_poll(dev, MT_WPDMA_GLO_CFG,
    MT_WPDMA_GLO_CFG_TX_DMA_BUSY |
    MT_WPDMA_GLO_CFG_RX_DMA_BUSY,
    0, 1000);
}
