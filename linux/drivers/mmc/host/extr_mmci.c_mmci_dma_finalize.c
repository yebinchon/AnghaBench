
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmci_host {TYPE_1__* ops; int use_dma; } ;
struct mmc_data {int dummy; } ;
struct TYPE_2__ {int (* dma_finalize ) (struct mmci_host*,struct mmc_data*) ;} ;


 int stub1 (struct mmci_host*,struct mmc_data*) ;

void mmci_dma_finalize(struct mmci_host *host, struct mmc_data *data)
{
 if (!host->use_dma)
  return;

 if (host->ops && host->ops->dma_finalize)
  host->ops->dma_finalize(host, data);
}
