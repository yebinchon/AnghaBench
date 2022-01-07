
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct mmc_queue {int use_cqe; struct mmc_blk_data* blkdata; } ;
struct mmc_host {int dummy; } ;
struct mmc_card {struct mmc_host* host; } ;
struct TYPE_2__ {struct mmc_card* card; } ;
struct mmc_blk_data {int part_type; TYPE_1__ queue; } ;
typedef enum mmc_issued { ____Placeholder_mmc_issued } mmc_issued ;


 int EBUSY ;
 int EINVAL ;



 int MMC_REQ_BUSY ;
 int MMC_REQ_FAILED_TO_START ;
 int MMC_REQ_FINISHED ;
 int MMC_REQ_STARTED ;







 int WARN_ON_ONCE (int) ;
 int mmc_blk_cqe_issue_flush (struct mmc_queue*,struct request*) ;
 int mmc_blk_cqe_issue_rw_rq (struct mmc_queue*,struct request*) ;
 int mmc_blk_issue_discard_rq (struct mmc_queue*,struct request*) ;
 int mmc_blk_issue_drv_op (struct mmc_queue*,struct request*) ;
 int mmc_blk_issue_flush (struct mmc_queue*,struct request*) ;
 int mmc_blk_issue_secdiscard_rq (struct mmc_queue*,struct request*) ;
 int mmc_blk_mq_issue_rw_rq (struct mmc_queue*,struct request*) ;
 int mmc_blk_part_switch (struct mmc_card*,int ) ;
 int mmc_blk_wait_for_idle (struct mmc_queue*,struct mmc_host*) ;
 int mmc_issue_type (struct mmc_queue*,struct request*) ;
 int req_op (struct request*) ;

enum mmc_issued mmc_blk_mq_issue_rq(struct mmc_queue *mq, struct request *req)
{
 struct mmc_blk_data *md = mq->blkdata;
 struct mmc_card *card = md->queue.card;
 struct mmc_host *host = card->host;
 int ret;

 ret = mmc_blk_part_switch(card, md->part_type);
 if (ret)
  return MMC_REQ_FAILED_TO_START;

 switch (mmc_issue_type(mq, req)) {
 case 135:
  ret = mmc_blk_wait_for_idle(mq, host);
  if (ret)
   return MMC_REQ_BUSY;
  switch (req_op(req)) {
  case 133:
  case 132:
   mmc_blk_issue_drv_op(mq, req);
   break;
  case 134:
   mmc_blk_issue_discard_rq(mq, req);
   break;
  case 129:
   mmc_blk_issue_secdiscard_rq(mq, req);
   break;
  case 131:
   mmc_blk_issue_flush(mq, req);
   break;
  default:
   WARN_ON_ONCE(1);
   return MMC_REQ_FAILED_TO_START;
  }
  return MMC_REQ_FINISHED;
 case 136:
 case 137:
  switch (req_op(req)) {
  case 131:
   ret = mmc_blk_cqe_issue_flush(mq, req);
   break;
  case 130:
  case 128:
   if (mq->use_cqe)
    ret = mmc_blk_cqe_issue_rw_rq(mq, req);
   else
    ret = mmc_blk_mq_issue_rw_rq(mq, req);
   break;
  default:
   WARN_ON_ONCE(1);
   ret = -EINVAL;
  }
  if (!ret)
   return MMC_REQ_STARTED;
  return ret == -EBUSY ? MMC_REQ_BUSY : MMC_REQ_FAILED_TO_START;
 default:
  WARN_ON_ONCE(1);
  return MMC_REQ_FAILED_TO_START;
 }
}
