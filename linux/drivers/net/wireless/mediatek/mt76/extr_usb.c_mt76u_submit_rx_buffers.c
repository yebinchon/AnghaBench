
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76_queue {int ndesc; int lock; scalar_t__ queued; scalar_t__ tail; scalar_t__ head; TYPE_1__* entry; } ;
struct mt76_dev {struct mt76_queue* q_rx; } ;
struct TYPE_2__ {int urb; } ;


 size_t MT_RXQ_MAIN ;
 int mt76u_submit_rx_buf (struct mt76_dev*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mt76u_submit_rx_buffers(struct mt76_dev *dev)
{
 struct mt76_queue *q = &dev->q_rx[MT_RXQ_MAIN];
 unsigned long flags;
 int i, err = 0;

 spin_lock_irqsave(&q->lock, flags);
 for (i = 0; i < q->ndesc; i++) {
  err = mt76u_submit_rx_buf(dev, q->entry[i].urb);
  if (err < 0)
   break;
 }
 q->head = q->tail = 0;
 q->queued = 0;
 spin_unlock_irqrestore(&q->lock, flags);

 return err;
}
