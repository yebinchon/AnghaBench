
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct request {int dummy; } ;
struct mmc_request {TYPE_3__* data; TYPE_2__* cmd; } ;
struct TYPE_4__ {struct mmc_request mrq; } ;
struct mmc_queue_req {int retries; TYPE_1__ brq; } ;
struct mmc_queue {struct mmc_card* card; } ;
struct mmc_host {int dummy; } ;
struct mmc_card {struct mmc_host* host; } ;
typedef int blk_status_t ;
struct TYPE_6__ {scalar_t__ bytes_xfered; scalar_t__ error; } ;
struct TYPE_5__ {int* resp; scalar_t__ error; } ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int CMD_ERRORS ;
 int MMC_MAX_RETRIES ;
 int MMC_READ_SINGLE_RETRIES ;
 scalar_t__ blk_update_request (struct request*,int ,int) ;
 int mmc_blk_fix_state (struct mmc_card*,struct request*) ;
 int mmc_blk_in_tran_state (int) ;
 int mmc_blk_rw_rq_prep (struct mmc_queue_req*,struct mmc_card*,int,struct mmc_queue*) ;
 int mmc_host_is_spi (struct mmc_host*) ;
 int mmc_send_status (struct mmc_card*,int*) ;
 int mmc_wait_for_req (struct mmc_host*,struct mmc_request*) ;
 struct mmc_queue_req* req_to_mmc_queue_req (struct request*) ;

__attribute__((used)) static void mmc_blk_read_single(struct mmc_queue *mq, struct request *req)
{
 struct mmc_queue_req *mqrq = req_to_mmc_queue_req(req);
 struct mmc_request *mrq = &mqrq->brq.mrq;
 struct mmc_card *card = mq->card;
 struct mmc_host *host = card->host;
 blk_status_t error = BLK_STS_OK;
 int retries = 0;

 do {
  u32 status;
  int err;

  mmc_blk_rw_rq_prep(mqrq, card, 1, mq);

  mmc_wait_for_req(host, mrq);

  err = mmc_send_status(card, &status);
  if (err)
   goto error_exit;

  if (!mmc_host_is_spi(host) &&
      !mmc_blk_in_tran_state(status)) {
   err = mmc_blk_fix_state(card, req);
   if (err)
    goto error_exit;
  }

  if (mrq->cmd->error && retries++ < MMC_READ_SINGLE_RETRIES)
   continue;

  retries = 0;

  if (mrq->cmd->error ||
      mrq->data->error ||
      (!mmc_host_is_spi(host) &&
       (mrq->cmd->resp[0] & CMD_ERRORS || status & CMD_ERRORS)))
   error = BLK_STS_IOERR;
  else
   error = BLK_STS_OK;

 } while (blk_update_request(req, error, 512));

 return;

error_exit:
 mrq->data->bytes_xfered = 0;
 blk_update_request(req, BLK_STS_IOERR, 512);

 if (mqrq->retries > MMC_MAX_RETRIES - 1)
  mqrq->retries = MMC_MAX_RETRIES - 1;
}
