
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_queue {int waiting; int lock; int rw_wait; scalar_t__ recovery_needed; } ;


 int EBUSY ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool mmc_blk_rw_wait_cond(struct mmc_queue *mq, int *err)
{
 unsigned long flags;
 bool done;





 spin_lock_irqsave(&mq->lock, flags);
 if (mq->recovery_needed) {
  *err = -EBUSY;
  done = 1;
 } else {
  done = !mq->rw_wait;
 }
 mq->waiting = !done;
 spin_unlock_irqrestore(&mq->lock, flags);

 return done;
}
