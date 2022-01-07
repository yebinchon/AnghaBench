
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_queue {TYPE_1__* card; int queue; } ;
struct TYPE_2__ {int host; } ;


 int blk_mq_quiesce_queue (int ) ;
 int mmc_claim_host (int ) ;
 int mmc_release_host (int ) ;

void mmc_queue_suspend(struct mmc_queue *mq)
{
 blk_mq_quiesce_queue(mq->queue);





 mmc_claim_host(mq->card->host);
 mmc_release_host(mq->card->host);
}
