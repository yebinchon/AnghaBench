
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_sprd_host {int flags; } ;
struct sdhci_host {int flags; scalar_t__ version; } ;
struct mmc_request {TYPE_1__* sbc; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int arg; } ;


 int SDHCI_AUTO_CMD23 ;
 scalar_t__ SDHCI_SPEC_410 ;
 int SDHCI_SPRD_ARG2_STUFF ;
 struct sdhci_sprd_host* TO_SPRD_HOST (struct sdhci_host*) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_request (struct mmc_host*,struct mmc_request*) ;

__attribute__((used)) static void sdhci_sprd_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct sdhci_host *host = mmc_priv(mmc);
 struct sdhci_sprd_host *sprd_host = TO_SPRD_HOST(host);

 host->flags |= sprd_host->flags & SDHCI_AUTO_CMD23;






 if (host->version >= SDHCI_SPEC_410 &&
     mrq->sbc && (mrq->sbc->arg & SDHCI_SPRD_ARG2_STUFF) &&
     (host->flags & SDHCI_AUTO_CMD23))
  host->flags &= ~SDHCI_AUTO_CMD23;

 sdhci_request(mmc, mrq);
}
