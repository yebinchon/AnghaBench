
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mt76_queue_entry {int * skb; int * txwi; int skip_buf0; } ;
struct mt76_queue {TYPE_1__* desc; struct mt76_queue_entry* entry; } ;
struct mt76_dev {int dev; } ;
typedef int __le32 ;
struct TYPE_2__ {int buf1; int buf0; int ctrl; } ;


 int * DMA_DUMMY_DATA ;
 int DMA_TO_DEVICE ;
 int FIELD_GET (int ,int) ;
 int MT_DMA_CTL_LAST_SEC0 ;
 int MT_DMA_CTL_SD_LEN0 ;
 int MT_DMA_CTL_SD_LEN1 ;
 int READ_ONCE (int ) ;
 int dma_unmap_single (int ,int,int,int ) ;
 int le32_to_cpu (int ) ;
 int memset (struct mt76_queue_entry*,int ,int) ;

__attribute__((used)) static void
mt76_dma_tx_cleanup_idx(struct mt76_dev *dev, struct mt76_queue *q, int idx,
   struct mt76_queue_entry *prev_e)
{
 struct mt76_queue_entry *e = &q->entry[idx];
 __le32 __ctrl = READ_ONCE(q->desc[idx].ctrl);
 u32 ctrl = le32_to_cpu(__ctrl);

 if (!e->skip_buf0) {
  __le32 addr = READ_ONCE(q->desc[idx].buf0);
  u32 len = FIELD_GET(MT_DMA_CTL_SD_LEN0, ctrl);

  dma_unmap_single(dev->dev, le32_to_cpu(addr), len,
     DMA_TO_DEVICE);
 }

 if (!(ctrl & MT_DMA_CTL_LAST_SEC0)) {
  __le32 addr = READ_ONCE(q->desc[idx].buf1);
  u32 len = FIELD_GET(MT_DMA_CTL_SD_LEN1, ctrl);

  dma_unmap_single(dev->dev, le32_to_cpu(addr), len,
     DMA_TO_DEVICE);
 }

 if (e->txwi == DMA_DUMMY_DATA)
  e->txwi = ((void*)0);

 if (e->skb == DMA_DUMMY_DATA)
  e->skb = ((void*)0);

 *prev_e = *e;
 memset(e, 0, sizeof(*e));
}
