
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_queue_req {int dummy; } ;
struct mmc_queue {int card; } ;


 scalar_t__ mmc_blk_urgent_bkops_needed (struct mmc_queue*,struct mmc_queue_req*) ;
 int mmc_run_bkops (int ) ;

__attribute__((used)) static void mmc_blk_urgent_bkops(struct mmc_queue *mq,
     struct mmc_queue_req *mqrq)
{
 if (mmc_blk_urgent_bkops_needed(mq, mqrq))
  mmc_run_bkops(mq->card);
}
