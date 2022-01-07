
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int (* hw_reset ) (struct tmio_mmc_host*) ;int (* reset ) (struct tmio_mmc_host*) ;} ;
struct mmc_host {int dummy; } ;


 struct tmio_mmc_host* mmc_priv (struct mmc_host*) ;
 int stub1 (struct tmio_mmc_host*) ;
 int stub2 (struct tmio_mmc_host*) ;
 int tmio_mmc_abort_dma (struct tmio_mmc_host*) ;

__attribute__((used)) static void tmio_mmc_hw_reset(struct mmc_host *mmc)
{
 struct tmio_mmc_host *host = mmc_priv(mmc);

 host->reset(host);

 tmio_mmc_abort_dma(host);

 if (host->hw_reset)
  host->hw_reset(host);
}
