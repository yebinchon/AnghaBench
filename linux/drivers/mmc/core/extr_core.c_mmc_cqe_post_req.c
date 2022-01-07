
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {int dummy; } ;
struct mmc_host {TYPE_1__* cqe_ops; } ;
struct TYPE_2__ {int (* cqe_post_req ) (struct mmc_host*,struct mmc_request*) ;} ;


 int stub1 (struct mmc_host*,struct mmc_request*) ;

void mmc_cqe_post_req(struct mmc_host *host, struct mmc_request *mrq)
{
 if (host->cqe_ops->cqe_post_req)
  host->cqe_ops->cqe_post_req(host, mrq);
}
