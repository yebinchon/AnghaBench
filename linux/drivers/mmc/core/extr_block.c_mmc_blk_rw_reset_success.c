
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct mmc_queue {int blkdata; } ;


 int MMC_BLK_READ ;
 int MMC_BLK_WRITE ;
 scalar_t__ READ ;
 int mmc_blk_reset_success (int ,int) ;
 scalar_t__ rq_data_dir (struct request*) ;

__attribute__((used)) static inline void mmc_blk_rw_reset_success(struct mmc_queue *mq,
         struct request *req)
{
 int type = rq_data_dir(req) == READ ? MMC_BLK_READ : MMC_BLK_WRITE;

 mmc_blk_reset_success(mq->blkdata, type);
}
