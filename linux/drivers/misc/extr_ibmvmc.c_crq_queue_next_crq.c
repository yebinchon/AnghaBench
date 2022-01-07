
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvmc_crq_msg {int valid; } ;
struct crq_queue {size_t cur; size_t size; int lock; struct ibmvmc_crq_msg* msgs; } ;


 int dma_rmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct ibmvmc_crq_msg *crq_queue_next_crq(struct crq_queue *queue)
{
 struct ibmvmc_crq_msg *crq;
 unsigned long flags;

 spin_lock_irqsave(&queue->lock, flags);
 crq = &queue->msgs[queue->cur];
 if (crq->valid & 0x80) {
  if (++queue->cur == queue->size)
   queue->cur = 0;




  dma_rmb();
 } else {
  crq = ((void*)0);
 }

 spin_unlock_irqrestore(&queue->lock, flags);

 return crq;
}
