
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct msb_data {int q_lock; int io_work; int io_queue; int io_queue_stopped; struct request* req; scalar_t__ card_dead; } ;
struct memstick_dev {int dummy; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
typedef int blk_status_t ;
struct TYPE_2__ {struct memstick_dev* queuedata; } ;


 int BLK_STS_DEV_RESOURCE ;
 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int WARN_ON (int) ;
 int blk_mq_start_request (struct request*) ;
 int dbg (char*) ;
 int dbg_verbose (char*) ;
 struct msb_data* memstick_get_drvdata (struct memstick_dev*) ;
 int queue_work (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static blk_status_t msb_queue_rq(struct blk_mq_hw_ctx *hctx,
     const struct blk_mq_queue_data *bd)
{
 struct memstick_dev *card = hctx->queue->queuedata;
 struct msb_data *msb = memstick_get_drvdata(card);
 struct request *req = bd->rq;

 dbg_verbose("Submit request");

 spin_lock_irq(&msb->q_lock);

 if (msb->card_dead) {
  dbg("Refusing requests on removed card");

  WARN_ON(!msb->io_queue_stopped);

  spin_unlock_irq(&msb->q_lock);
  blk_mq_start_request(req);
  return BLK_STS_IOERR;
 }

 if (msb->req) {
  spin_unlock_irq(&msb->q_lock);
  return BLK_STS_DEV_RESOURCE;
 }

 blk_mq_start_request(req);
 msb->req = req;

 if (!msb->io_queue_stopped)
  queue_work(msb->io_queue, &msb->io_work);

 spin_unlock_irq(&msb->q_lock);
 return BLK_STS_OK;
}
