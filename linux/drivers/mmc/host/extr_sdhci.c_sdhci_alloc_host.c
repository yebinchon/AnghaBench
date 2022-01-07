
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int tuning_delay; int adma_table_cnt; int sdma_boundary; int tuning_loop_count; int cqe_err_ier; int cqe_ier; int flags; int mmc_host_ops; struct mmc_host* mmc; } ;
struct mmc_host {int * ops; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct sdhci_host* ERR_PTR (int ) ;
 int MAX_TUNING_LOOP ;
 int SDHCI_CQE_INT_ERR_MASK ;
 int SDHCI_CQE_INT_MASK ;
 int SDHCI_DEFAULT_BOUNDARY_ARG ;
 int SDHCI_MAX_SEGS ;
 int SDHCI_SIGNALING_330 ;
 int WARN_ON (int ) ;
 struct mmc_host* mmc_alloc_host (int,struct device*) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_ops ;

struct sdhci_host *sdhci_alloc_host(struct device *dev,
 size_t priv_size)
{
 struct mmc_host *mmc;
 struct sdhci_host *host;

 WARN_ON(dev == ((void*)0));

 mmc = mmc_alloc_host(sizeof(struct sdhci_host) + priv_size, dev);
 if (!mmc)
  return ERR_PTR(-ENOMEM);

 host = mmc_priv(mmc);
 host->mmc = mmc;
 host->mmc_host_ops = sdhci_ops;
 mmc->ops = &host->mmc_host_ops;

 host->flags = SDHCI_SIGNALING_330;

 host->cqe_ier = SDHCI_CQE_INT_MASK;
 host->cqe_err_ier = SDHCI_CQE_INT_ERR_MASK;

 host->tuning_delay = -1;
 host->tuning_loop_count = MAX_TUNING_LOOP;

 host->sdma_boundary = SDHCI_DEFAULT_BOUNDARY_ARG;






 host->adma_table_cnt = SDHCI_MAX_SEGS * 2 + 1;

 return host;
}
