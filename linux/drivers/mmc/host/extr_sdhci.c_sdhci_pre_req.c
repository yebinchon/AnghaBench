
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {int flags; int bounce_buffer; } ;
struct mmc_request {TYPE_1__* data; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int host_cookie; } ;


 int COOKIE_PRE_MAPPED ;
 int COOKIE_UNMAPPED ;
 int SDHCI_REQ_USE_DMA ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_pre_dma_transfer (struct sdhci_host*,TYPE_1__*,int ) ;

__attribute__((used)) static void sdhci_pre_req(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct sdhci_host *host = mmc_priv(mmc);

 mrq->data->host_cookie = COOKIE_UNMAPPED;






 if (host->flags & SDHCI_REQ_USE_DMA && !host->bounce_buffer)
  sdhci_pre_dma_transfer(host, mrq->data, COOKIE_PRE_MAPPED);
}
