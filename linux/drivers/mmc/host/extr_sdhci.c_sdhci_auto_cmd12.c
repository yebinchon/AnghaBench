
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int flags; } ;
struct mmc_request {int cap_cmd_during_tfr; int sbc; } ;


 int SDHCI_AUTO_CMD12 ;

__attribute__((used)) static inline bool sdhci_auto_cmd12(struct sdhci_host *host,
        struct mmc_request *mrq)
{
 return !mrq->sbc && (host->flags & SDHCI_AUTO_CMD12) &&
        !mrq->cap_cmd_during_tfr;
}
