
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76_queue {TYPE_1__* regs; int head; } ;
struct mt76_dev {int dummy; } ;
struct TYPE_2__ {int cpu_idx; } ;


 int writel (int ,int *) ;

__attribute__((used)) static void
mt76_dma_kick_queue(struct mt76_dev *dev, struct mt76_queue *q)
{
 writel(q->head, &q->regs->cpu_idx);
}
