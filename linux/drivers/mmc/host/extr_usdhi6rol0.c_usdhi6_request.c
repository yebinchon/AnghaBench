
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usdhi6_host {int * sg; struct mmc_request* mrq; int timeout_work; } ;
struct mmc_request {TYPE_1__* cmd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int error; } ;


 int cancel_delayed_work_sync (int *) ;
 struct usdhi6_host* mmc_priv (struct mmc_host*) ;
 int usdhi6_request_done (struct usdhi6_host*) ;
 int usdhi6_rq_start (struct usdhi6_host*) ;
 int usdhi6_timeout_set (struct usdhi6_host*) ;

__attribute__((used)) static void usdhi6_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct usdhi6_host *host = mmc_priv(mmc);
 int ret;

 cancel_delayed_work_sync(&host->timeout_work);

 host->mrq = mrq;
 host->sg = ((void*)0);

 usdhi6_timeout_set(host);
 ret = usdhi6_rq_start(host);
 if (ret < 0) {
  mrq->cmd->error = ret;
  usdhi6_request_done(host);
 }
}
