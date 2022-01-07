
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct mmc_queue {int * card; int complete_work; int tag_set; struct request_queue* queue; } ;


 int blk_cleanup_queue (struct request_queue*) ;
 int blk_mq_free_tag_set (int *) ;
 int blk_mq_unquiesce_queue (struct request_queue*) ;
 scalar_t__ blk_queue_quiesced (struct request_queue*) ;
 int flush_work (int *) ;

void mmc_cleanup_queue(struct mmc_queue *mq)
{
 struct request_queue *q = mq->queue;





 if (blk_queue_quiesced(q))
  blk_mq_unquiesce_queue(q);

 blk_cleanup_queue(q);
 blk_mq_free_tag_set(&mq->tag_set);






 flush_work(&mq->complete_work);

 mq->card = ((void*)0);
}
