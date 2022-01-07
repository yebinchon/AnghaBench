
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_mmc_host {struct mmc_request* mrq; } ;
struct mmc_request {int cmd; int sbc; } ;
struct mmc_host {int dummy; } ;


 int WARN_ON (int ) ;
 struct mxs_mmc_host* mmc_priv (struct mmc_host*) ;
 int mxs_mmc_start_cmd (struct mxs_mmc_host*,int ) ;

__attribute__((used)) static void mxs_mmc_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct mxs_mmc_host *host = mmc_priv(mmc);

 WARN_ON(host->mrq != ((void*)0));
 host->mrq = mrq;

 if (mrq->sbc)
  mxs_mmc_start_cmd(host, mrq->sbc);
 else
  mxs_mmc_start_cmd(host, mrq->cmd);
}
