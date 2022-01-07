
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_queue {scalar_t__ use_cqe; } ;
struct mmc_host {TYPE_1__* cqe_ops; } ;
struct TYPE_2__ {int (* cqe_wait_for_idle ) (struct mmc_host*) ;} ;


 int mmc_blk_rw_wait (struct mmc_queue*,int *) ;
 int stub1 (struct mmc_host*) ;

__attribute__((used)) static int mmc_blk_wait_for_idle(struct mmc_queue *mq, struct mmc_host *host)
{
 if (mq->use_cqe)
  return host->cqe_ops->cqe_wait_for_idle(host);

 return mmc_blk_rw_wait(mq, ((void*)0));
}
