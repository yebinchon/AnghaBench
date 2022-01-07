
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {int * align_buffer; int * adma_table; int align_addr; scalar_t__ adma_table_sz; scalar_t__ align_buffer_sz; struct mmc_host* mmc; } ;
struct TYPE_2__ {int vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 int IS_ERR (int ) ;
 int dma_free_coherent (int ,scalar_t__,int *,int ) ;
 int mmc_dev (struct mmc_host*) ;
 int regulator_disable (int ) ;

void sdhci_cleanup_host(struct sdhci_host *host)
{
 struct mmc_host *mmc = host->mmc;

 if (!IS_ERR(mmc->supply.vqmmc))
  regulator_disable(mmc->supply.vqmmc);

 if (host->align_buffer)
  dma_free_coherent(mmc_dev(mmc), host->align_buffer_sz +
      host->adma_table_sz, host->align_buffer,
      host->align_addr);
 host->adma_table = ((void*)0);
 host->align_buffer = ((void*)0);
}
