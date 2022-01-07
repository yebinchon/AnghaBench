
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_host {int pwr_irq_flag; } ;
struct sdhci_host {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int sdhci_msm_complete_pwr_irq_wait (struct sdhci_msm_host*) ;
 int sdhci_msm_handle_pwr_irq (struct sdhci_host*,int) ;
 struct sdhci_msm_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static irqreturn_t sdhci_msm_pwr_irq(int irq, void *data)
{
 struct sdhci_host *host = (struct sdhci_host *)data;
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_msm_host *msm_host = sdhci_pltfm_priv(pltfm_host);

 sdhci_msm_handle_pwr_irq(host, irq);
 msm_host->pwr_irq_flag = 1;
 sdhci_msm_complete_pwr_irq_wait(msm_host);


 return IRQ_HANDLED;
}
