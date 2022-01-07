
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_queue {int cqe_busy; } ;


 int MMC_CQE_DCMD_BUSY ;
 int MMC_CQE_QUEUE_FULL ;
 int mmc_cqe_dcmd_busy (struct mmc_queue*) ;

void mmc_cqe_check_busy(struct mmc_queue *mq)
{
 if ((mq->cqe_busy & MMC_CQE_DCMD_BUSY) && !mmc_cqe_dcmd_busy(mq))
  mq->cqe_busy &= ~MMC_CQE_DCMD_BUSY;

 mq->cqe_busy &= ~MMC_CQE_QUEUE_FULL;
}
