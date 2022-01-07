
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mt76_queue {TYPE_2__* regs; int queued; } ;
struct TYPE_4__ {TYPE_3__* q_tx; } ;
struct mt7603_dev {scalar_t__* tx_dma_idx; TYPE_1__ mt76; } ;
struct TYPE_6__ {struct mt76_queue* q; } ;
struct TYPE_5__ {int cpu_idx; int dma_idx; } ;


 scalar_t__ readl (int *) ;

__attribute__((used)) static bool mt7603_tx_hang(struct mt7603_dev *dev)
{
 struct mt76_queue *q;
 u32 dma_idx, prev_dma_idx;
 int i;

 for (i = 0; i < 4; i++) {
  q = dev->mt76.q_tx[i].q;

  if (!q->queued)
   continue;

  prev_dma_idx = dev->tx_dma_idx[i];
  dma_idx = readl(&q->regs->dma_idx);
  dev->tx_dma_idx[i] = dma_idx;

  if (dma_idx == prev_dma_idx &&
      dma_idx != readl(&q->regs->cpu_idx))
   break;
 }

 return i < 4;
}
