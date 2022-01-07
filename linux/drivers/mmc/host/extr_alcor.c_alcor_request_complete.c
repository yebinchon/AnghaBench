
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int dummy; } ;
struct alcor_sdmmc_host {scalar_t__ dma_on; int * data; int * cmd; struct mmc_request* mrq; int timeout_work; } ;


 int cancel_delayed_work (int *) ;
 int mmc_from_priv (struct alcor_sdmmc_host*) ;
 int mmc_request_done (int ,struct mmc_request*) ;

__attribute__((used)) static void alcor_request_complete(struct alcor_sdmmc_host *host,
       bool cancel_timeout)
{
 struct mmc_request *mrq;





 if (!host->mrq)
  return;

 if (cancel_timeout)
  cancel_delayed_work(&host->timeout_work);

 mrq = host->mrq;

 host->mrq = ((void*)0);
 host->cmd = ((void*)0);
 host->data = ((void*)0);
 host->dma_on = 0;

 mmc_request_done(mmc_from_priv(host), mrq);
}
