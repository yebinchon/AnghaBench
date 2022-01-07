
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_queue {int tx_lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xennet_tx_buf_gc (struct netfront_queue*) ;

__attribute__((used)) static irqreturn_t xennet_tx_interrupt(int irq, void *dev_id)
{
 struct netfront_queue *queue = dev_id;
 unsigned long flags;

 spin_lock_irqsave(&queue->tx_lock, flags);
 xennet_tx_buf_gc(queue);
 spin_unlock_irqrestore(&queue->tx_lock, flags);

 return IRQ_HANDLED;
}
