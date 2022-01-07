
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubiblock_pdu {int work; int usgl; } ;
struct ubiblock {int wq; } ;
struct request {int dummy; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
typedef int blk_status_t ;
struct TYPE_2__ {struct ubiblock* queuedata; } ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;

 struct ubiblock_pdu* blk_mq_rq_to_pdu (struct request*) ;
 int queue_work (int ,int *) ;
 int req_op (struct request*) ;
 int ubi_sgl_init (int *) ;

__attribute__((used)) static blk_status_t ubiblock_queue_rq(struct blk_mq_hw_ctx *hctx,
        const struct blk_mq_queue_data *bd)
{
 struct request *req = bd->rq;
 struct ubiblock *dev = hctx->queue->queuedata;
 struct ubiblock_pdu *pdu = blk_mq_rq_to_pdu(req);

 switch (req_op(req)) {
 case 128:
  ubi_sgl_init(&pdu->usgl);
  queue_work(dev->wq, &pdu->work);
  return BLK_STS_OK;
 default:
  return BLK_STS_IOERR;
 }

}
