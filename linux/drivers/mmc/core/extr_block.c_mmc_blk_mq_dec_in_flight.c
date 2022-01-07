
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct mmc_queue {int* in_flight; int ctx; int card; int lock; } ;


 size_t mmc_issue_type (struct mmc_queue*,struct request*) ;
 int mmc_put_card (int ,int *) ;
 scalar_t__ mmc_tot_in_flight (struct mmc_queue*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mmc_blk_mq_dec_in_flight(struct mmc_queue *mq, struct request *req)
{
 unsigned long flags;
 bool put_card;

 spin_lock_irqsave(&mq->lock, flags);

 mq->in_flight[mmc_issue_type(mq, req)] -= 1;

 put_card = (mmc_tot_in_flight(mq) == 0);

 spin_unlock_irqrestore(&mq->lock, flags);

 if (put_card)
  mmc_put_card(mq->card, &mq->ctx);
}
