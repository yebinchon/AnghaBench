
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76_queue {TYPE_1__* regs; int head; int tail; int ndesc; int desc_dma; } ;
struct mt76_dev {int dummy; } ;
struct TYPE_2__ {int cpu_idx; int dma_idx; int ring_size; int desc_base; } ;


 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static void
mt76_dma_sync_idx(struct mt76_dev *dev, struct mt76_queue *q)
{
 writel(q->desc_dma, &q->regs->desc_base);
 writel(q->ndesc, &q->regs->ring_size);
 q->head = readl(&q->regs->dma_idx);
 q->tail = q->head;
 writel(q->head, &q->regs->cpu_idx);
}
