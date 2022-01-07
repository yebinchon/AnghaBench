
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_queue {int queue; } ;


 int blk_mq_unquiesce_queue (int ) ;

void mmc_queue_resume(struct mmc_queue *mq)
{
 blk_mq_unquiesce_queue(mq->queue);
}
