
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_request {int tag; TYPE_1__* cmd; struct mmc_host* host; } ;
struct mmc_host {TYPE_2__* cqe_ops; } ;
struct TYPE_4__ {int (* cqe_request ) (struct mmc_host*,struct mmc_request*) ;} ;
struct TYPE_3__ {int opcode; } ;


 int mmc_hostname (struct mmc_host*) ;
 int mmc_mrq_pr_debug (struct mmc_host*,struct mmc_request*,int) ;
 int mmc_mrq_prep (struct mmc_host*,struct mmc_request*) ;
 int mmc_retune (struct mmc_host*) ;
 int pr_debug (char*,int ,int ,int) ;
 int stub1 (struct mmc_host*,struct mmc_request*) ;
 int trace_mmc_request_start (struct mmc_host*,struct mmc_request*) ;

int mmc_cqe_start_req(struct mmc_host *host, struct mmc_request *mrq)
{
 int err;







 err = mmc_retune(host);
 if (err)
  goto out_err;

 mrq->host = host;

 mmc_mrq_pr_debug(host, mrq, 1);

 err = mmc_mrq_prep(host, mrq);
 if (err)
  goto out_err;

 err = host->cqe_ops->cqe_request(host, mrq);
 if (err)
  goto out_err;

 trace_mmc_request_start(host, mrq);

 return 0;

out_err:
 if (mrq->cmd) {
  pr_debug("%s: failed to start CQE direct CMD%u, error %d\n",
    mmc_hostname(host), mrq->cmd->opcode, err);
 } else {
  pr_debug("%s: failed to start CQE transfer for tag %d, error %d\n",
    mmc_hostname(host), mrq->tag, err);
 }
 return err;
}
