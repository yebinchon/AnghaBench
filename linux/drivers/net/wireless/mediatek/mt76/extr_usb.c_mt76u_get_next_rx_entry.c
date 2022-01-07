
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct mt76_queue {scalar_t__ queued; size_t head; int ndesc; int lock; TYPE_1__* entry; } ;
struct mt76_dev {struct mt76_queue* q_rx; } ;
struct TYPE_2__ {struct urb* urb; } ;


 size_t MT_RXQ_MAIN ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline struct urb *
mt76u_get_next_rx_entry(struct mt76_dev *dev)
{
 struct mt76_queue *q = &dev->q_rx[MT_RXQ_MAIN];
 struct urb *urb = ((void*)0);
 unsigned long flags;

 spin_lock_irqsave(&q->lock, flags);
 if (q->queued > 0) {
  urb = q->entry[q->head].urb;
  q->head = (q->head + 1) % q->ndesc;
  q->queued--;
 }
 spin_unlock_irqrestore(&q->lock, flags);

 return urb;
}
