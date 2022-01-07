
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int recovery_notifier; int done; } ;
struct mmc_host {int dummy; } ;


 int mmc_blk_cqe_req_done ;
 int mmc_cqe_recovery_notifier ;
 int mmc_cqe_start_req (struct mmc_host*,struct mmc_request*) ;

__attribute__((used)) static int mmc_blk_cqe_start_req(struct mmc_host *host, struct mmc_request *mrq)
{
 mrq->done = mmc_blk_cqe_req_done;
 mrq->recovery_notifier = mmc_cqe_recovery_notifier;

 return mmc_cqe_start_req(host, mrq);
}
