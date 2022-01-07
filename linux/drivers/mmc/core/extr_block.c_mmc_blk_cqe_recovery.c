
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_queue {int blkdata; struct mmc_card* card; } ;
struct mmc_host {int dummy; } ;
struct mmc_card {struct mmc_host* host; } ;


 int MMC_BLK_CQE_RECOVERY ;
 int mmc_blk_reset (int ,struct mmc_host*,int ) ;
 int mmc_blk_reset_success (int ,int ) ;
 int mmc_cqe_recovery (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int pr_debug (char*,int ) ;

void mmc_blk_cqe_recovery(struct mmc_queue *mq)
{
 struct mmc_card *card = mq->card;
 struct mmc_host *host = card->host;
 int err;

 pr_debug("%s: CQE recovery start\n", mmc_hostname(host));

 err = mmc_cqe_recovery(host);
 if (err)
  mmc_blk_reset(mq->blkdata, host, MMC_BLK_CQE_RECOVERY);
 else
  mmc_blk_reset_success(mq->blkdata, MMC_BLK_CQE_RECOVERY);

 pr_debug("%s: CQE recovery done\n", mmc_hostname(host));
}
