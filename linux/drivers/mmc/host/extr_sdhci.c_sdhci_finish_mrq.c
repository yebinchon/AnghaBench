
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int complete_work; int complete_wq; } ;
struct mmc_request {int dummy; } ;


 int __sdhci_finish_mrq (struct sdhci_host*,struct mmc_request*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void sdhci_finish_mrq(struct sdhci_host *host, struct mmc_request *mrq)
{
 __sdhci_finish_mrq(host, mrq);

 queue_work(host->complete_wq, &host->complete_work);
}
