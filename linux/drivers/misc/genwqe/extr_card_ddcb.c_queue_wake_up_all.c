
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddcb_queue {unsigned int ddcb_max; size_t ddcb_act; int ddcb_lock; int busy_waitq; int * ddcb_waitqs; } ;
struct genwqe_dev {struct ddcb_queue queue; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int queue_wake_up_all(struct genwqe_dev *cd)
{
 unsigned int i;
 unsigned long flags;
 struct ddcb_queue *queue = &cd->queue;

 spin_lock_irqsave(&queue->ddcb_lock, flags);

 for (i = 0; i < queue->ddcb_max; i++)
  wake_up_interruptible(&queue->ddcb_waitqs[queue->ddcb_act]);

 wake_up_interruptible(&queue->busy_waitq);
 spin_unlock_irqrestore(&queue->ddcb_lock, flags);

 return 0;
}
