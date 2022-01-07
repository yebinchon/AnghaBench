
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xenon_priv {int tuning_count; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int tuning_count; int tuning_mode; } ;


 int SDHCI_INT_ENABLE ;
 int SDHCI_INT_RETUNE ;
 int SDHCI_SIGNAL_ENABLE ;
 int SDHCI_TUNING_MODE_1 ;
 int XENON_RETUNING_COMPATIBLE ;
 int XENON_SLOT_RETUNING_REQ_CTRL ;
 struct xenon_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void xenon_retune_setup(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct xenon_priv *priv = sdhci_pltfm_priv(pltfm_host);
 u32 reg;


 reg = sdhci_readl(host, XENON_SLOT_RETUNING_REQ_CTRL);
 reg &= ~XENON_RETUNING_COMPATIBLE;
 sdhci_writel(host, reg, XENON_SLOT_RETUNING_REQ_CTRL);


 reg = sdhci_readl(host, SDHCI_SIGNAL_ENABLE);
 reg &= ~SDHCI_INT_RETUNE;
 sdhci_writel(host, reg, SDHCI_SIGNAL_ENABLE);
 reg = sdhci_readl(host, SDHCI_INT_ENABLE);
 reg &= ~SDHCI_INT_RETUNE;
 sdhci_writel(host, reg, SDHCI_INT_ENABLE);


 host->tuning_mode = SDHCI_TUNING_MODE_1;

 host->tuning_count = 1 << (priv->tuning_count - 1);
}
