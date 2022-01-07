
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_pltfm_host {int xfer_mode_shadow; } ;
struct sdhci_host {int const ioaddr; } ;




 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int writel (int,int const) ;
 int writew (int,int const) ;

__attribute__((used)) static void tegra_sdhci_writew(struct sdhci_host *host, u16 val, int reg)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);

 switch (reg) {
 case 128:




  pltfm_host->xfer_mode_shadow = val;
  return;
 case 129:
  writel((val << 16) | pltfm_host->xfer_mode_shadow,
   host->ioaddr + 128);
  return;
 }

 writew(val, host->ioaddr + reg);
}
