
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_queue {int* in_flight; } ;


 size_t MMC_ISSUE_DCMD ;

__attribute__((used)) static inline bool mmc_cqe_dcmd_busy(struct mmc_queue *mq)
{

 return mq->in_flight[MMC_ISSUE_DCMD];
}
