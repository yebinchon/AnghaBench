
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76_queue {scalar_t__ queued; } ;
struct mt76_dev {TYPE_1__* q_tx; } ;
struct TYPE_2__ {struct mt76_queue* q; } ;


 int ARRAY_SIZE (TYPE_1__*) ;

bool mt76_has_tx_pending(struct mt76_dev *dev)
{
 struct mt76_queue *q;
 int i;

 for (i = 0; i < ARRAY_SIZE(dev->q_tx); i++) {
  q = dev->q_tx[i].q;
  if (q && q->queued)
   return 1;
 }

 return 0;
}
