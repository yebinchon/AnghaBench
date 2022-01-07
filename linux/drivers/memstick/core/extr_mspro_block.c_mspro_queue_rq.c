
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mspro_block_data {int q_lock; int * block_req; scalar_t__ eject; } ;
struct memstick_dev {int dummy; } ;
struct blk_mq_queue_data {int * rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
typedef int blk_status_t ;
struct TYPE_2__ {struct memstick_dev* queuedata; } ;


 int BLK_STS_DEV_RESOURCE ;
 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int blk_mq_start_request (int *) ;
 struct mspro_block_data* memstick_get_drvdata (struct memstick_dev*) ;
 scalar_t__ mspro_block_issue_req (struct memstick_dev*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static blk_status_t mspro_queue_rq(struct blk_mq_hw_ctx *hctx,
       const struct blk_mq_queue_data *bd)
{
 struct memstick_dev *card = hctx->queue->queuedata;
 struct mspro_block_data *msb = memstick_get_drvdata(card);

 spin_lock_irq(&msb->q_lock);

 if (msb->block_req) {
  spin_unlock_irq(&msb->q_lock);
  return BLK_STS_DEV_RESOURCE;
 }

 if (msb->eject) {
  spin_unlock_irq(&msb->q_lock);
  blk_mq_start_request(bd->rq);
  return BLK_STS_IOERR;
 }

 msb->block_req = bd->rq;
 blk_mq_start_request(bd->rq);

 if (mspro_block_issue_req(card))
  msb->block_req = ((void*)0);

 spin_unlock_irq(&msb->q_lock);
 return BLK_STS_OK;
}
