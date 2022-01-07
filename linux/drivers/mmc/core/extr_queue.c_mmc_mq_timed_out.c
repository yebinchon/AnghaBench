
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct mmc_queue* queuedata; } ;
struct request {struct request_queue* q; } ;
struct mmc_queue {int lock; int use_cqe; scalar_t__ recovery_needed; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;


 int BLK_EH_RESET_TIMER ;
 int mmc_cqe_timed_out (struct request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static enum blk_eh_timer_return mmc_mq_timed_out(struct request *req,
       bool reserved)
{
 struct request_queue *q = req->q;
 struct mmc_queue *mq = q->queuedata;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&mq->lock, flags);

 if (mq->recovery_needed || !mq->use_cqe)
  ret = BLK_EH_RESET_TIMER;
 else
  ret = mmc_cqe_timed_out(req);

 spin_unlock_irqrestore(&mq->lock, flags);

 return ret;
}
