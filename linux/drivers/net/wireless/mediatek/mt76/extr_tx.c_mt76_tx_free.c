
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76_txwi_cache {int dma_addr; } ;
struct mt76_dev {TYPE_1__* drv; int dev; } ;
struct TYPE_2__ {int txwi_size; } ;


 int DMA_TO_DEVICE ;
 struct mt76_txwi_cache* __mt76_get_txwi (struct mt76_dev*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;

void mt76_tx_free(struct mt76_dev *dev)
{
 struct mt76_txwi_cache *t;

 while ((t = __mt76_get_txwi(dev)) != ((void*)0))
  dma_unmap_single(dev->dev, t->dma_addr, dev->drv->txwi_size,
     DMA_TO_DEVICE);
}
