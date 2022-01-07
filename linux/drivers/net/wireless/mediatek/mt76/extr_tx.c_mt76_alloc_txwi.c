
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mt76_txwi_cache {int dma_addr; } ;
struct mt76_dev {TYPE_1__* drv; int dev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int txwi_size; } ;


 int DMA_TO_DEVICE ;
 int GFP_ATOMIC ;
 int L1_CACHE_ALIGN (int) ;
 int * devm_kzalloc (int ,int,int ) ;
 int dma_map_single (int ,int *,int,int ) ;

__attribute__((used)) static struct mt76_txwi_cache *
mt76_alloc_txwi(struct mt76_dev *dev)
{
 struct mt76_txwi_cache *t;
 dma_addr_t addr;
 u8 *txwi;
 int size;

 size = L1_CACHE_ALIGN(dev->drv->txwi_size + sizeof(*t));
 txwi = devm_kzalloc(dev->dev, size, GFP_ATOMIC);
 if (!txwi)
  return ((void*)0);

 addr = dma_map_single(dev->dev, txwi, dev->drv->txwi_size,
         DMA_TO_DEVICE);
 t = (struct mt76_txwi_cache *)(txwi + dev->drv->txwi_size);
 t->dma_addr = addr;

 return t;
}
