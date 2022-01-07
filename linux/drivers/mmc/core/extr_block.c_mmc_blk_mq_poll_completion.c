
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct mmc_queue_req {int brq; } ;
struct mmc_queue {TYPE_1__* card; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {struct mmc_host* host; } ;


 scalar_t__ mmc_blk_card_busy (TYPE_1__*,struct request*) ;
 int mmc_blk_mq_rw_recovery (struct mmc_queue*,struct request*) ;
 scalar_t__ mmc_blk_rq_error (int *) ;
 int mmc_blk_rw_reset_success (struct mmc_queue*,struct request*) ;
 int mmc_blk_urgent_bkops (struct mmc_queue*,struct mmc_queue_req*) ;
 int mmc_retune_release (struct mmc_host*) ;
 struct mmc_queue_req* req_to_mmc_queue_req (struct request*) ;

__attribute__((used)) static void mmc_blk_mq_poll_completion(struct mmc_queue *mq,
           struct request *req)
{
 struct mmc_queue_req *mqrq = req_to_mmc_queue_req(req);
 struct mmc_host *host = mq->card->host;

 if (mmc_blk_rq_error(&mqrq->brq) ||
     mmc_blk_card_busy(mq->card, req)) {
  mmc_blk_mq_rw_recovery(mq, req);
 } else {
  mmc_blk_rw_reset_success(mq, req);
  mmc_retune_release(host);
 }

 mmc_blk_urgent_bkops(mq, mqrq);
}
