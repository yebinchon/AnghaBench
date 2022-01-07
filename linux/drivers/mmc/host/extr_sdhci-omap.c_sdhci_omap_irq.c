
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_omap_host {scalar_t__ is_tuning; } ;
struct sdhci_host {TYPE_1__* cmd; int data_early; } ;
struct TYPE_2__ {int error; } ;


 int CMD_ERR_MASK ;
 int CMD_MASK ;
 int EILSEQ ;
 int ETIMEDOUT ;
 int SDHCI_INT_STATUS ;
 int SDHCI_INT_TIMEOUT ;
 struct sdhci_omap_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;

__attribute__((used)) static u32 sdhci_omap_irq(struct sdhci_host *host, u32 intmask)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_omap_host *omap_host = sdhci_pltfm_priv(pltfm_host);

 if (omap_host->is_tuning && host->cmd && !host->data_early &&
     (intmask & CMD_ERR_MASK)) {







  if (intmask & SDHCI_INT_TIMEOUT)
   host->cmd->error = -ETIMEDOUT;
  else
   host->cmd->error = -EILSEQ;

  host->cmd = ((void*)0);






  sdhci_writel(host, intmask & CMD_MASK, SDHCI_INT_STATUS);
  intmask &= ~CMD_MASK;
 }

 return intmask;
}
