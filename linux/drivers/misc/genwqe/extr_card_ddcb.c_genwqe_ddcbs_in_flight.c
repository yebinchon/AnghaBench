
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddcb_queue {int ddcbs_in_flight; int ddcb_lock; } ;
struct genwqe_dev {struct ddcb_queue queue; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int genwqe_ddcbs_in_flight(struct genwqe_dev *cd)
{
 unsigned long flags;
 int ddcbs_in_flight = 0;
 struct ddcb_queue *queue = &cd->queue;

 spin_lock_irqsave(&queue->ddcb_lock, flags);
 ddcbs_in_flight += queue->ddcbs_in_flight;
 spin_unlock_irqrestore(&queue->ddcb_lock, flags);

 return ddcbs_in_flight;
}
