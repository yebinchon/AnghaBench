
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mt76_queue {int tail; int ndesc; int queued; TYPE_1__* desc; } ;
struct mt76_dev {int dummy; } ;
struct TYPE_2__ {int ctrl; } ;


 int MT_DMA_CTL_DMA_DONE ;
 int cpu_to_le32 (int ) ;
 void* mt76_dma_get_buf (struct mt76_dev*,struct mt76_queue*,int,int*,int *,int*) ;

__attribute__((used)) static void *
mt76_dma_dequeue(struct mt76_dev *dev, struct mt76_queue *q, bool flush,
   int *len, u32 *info, bool *more)
{
 int idx = q->tail;

 *more = 0;
 if (!q->queued)
  return ((void*)0);

 if (!flush && !(q->desc[idx].ctrl & cpu_to_le32(MT_DMA_CTL_DMA_DONE)))
  return ((void*)0);

 q->tail = (q->tail + 1) % q->ndesc;
 q->queued--;

 return mt76_dma_get_buf(dev, q, idx, len, info, more);
}
