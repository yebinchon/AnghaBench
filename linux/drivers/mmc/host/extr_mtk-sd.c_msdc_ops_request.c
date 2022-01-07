
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msdc_host {struct mmc_request* mrq; scalar_t__ error; } ;
struct mmc_request {TYPE_1__* cmd; TYPE_1__* sbc; scalar_t__ data; } ;
struct mmc_host {int card; } ;
struct TYPE_2__ {int arg; } ;


 int WARN_ON (struct mmc_request*) ;
 int mmc_card_mmc (int ) ;
 struct msdc_host* mmc_priv (struct mmc_host*) ;
 int msdc_prepare_data (struct msdc_host*,struct mmc_request*) ;
 int msdc_start_command (struct msdc_host*,struct mmc_request*,TYPE_1__*) ;

__attribute__((used)) static void msdc_ops_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct msdc_host *host = mmc_priv(mmc);

 host->error = 0;
 WARN_ON(host->mrq);
 host->mrq = mrq;

 if (mrq->data)
  msdc_prepare_data(host, mrq);





 if (mrq->sbc && (!mmc_card_mmc(mmc->card) ||
     (mrq->sbc->arg & 0xFFFF0000)))
  msdc_start_command(host, mrq, mrq->sbc);
 else
  msdc_start_command(host, mrq, mrq->cmd);
}
