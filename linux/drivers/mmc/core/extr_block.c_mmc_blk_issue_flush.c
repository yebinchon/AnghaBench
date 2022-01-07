
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct mmc_queue {struct mmc_blk_data* blkdata; } ;
struct mmc_card {int dummy; } ;
struct TYPE_2__ {struct mmc_card* card; } ;
struct mmc_blk_data {TYPE_1__ queue; } ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int blk_mq_end_request (struct request*,int ) ;
 int mmc_flush_cache (struct mmc_card*) ;

__attribute__((used)) static void mmc_blk_issue_flush(struct mmc_queue *mq, struct request *req)
{
 struct mmc_blk_data *md = mq->blkdata;
 struct mmc_card *card = md->queue.card;
 int ret = 0;

 ret = mmc_flush_cache(card);
 blk_mq_end_request(req, ret ? BLK_STS_IOERR : BLK_STS_OK);
}
