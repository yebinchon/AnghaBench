
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sdhci_host {int dummy; } ;


 int SDHCI_AUTO_CAL_PDPU_OFFSET_MASK ;
 int SDHCI_TEGRA_AUTO_CAL_CONFIG ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void tegra_sdhci_set_pad_autocal_offset(struct sdhci_host *host,
            u16 pdpu)
{
 u32 reg;

 reg = sdhci_readl(host, SDHCI_TEGRA_AUTO_CAL_CONFIG);
 reg &= ~SDHCI_AUTO_CAL_PDPU_OFFSET_MASK;
 reg |= pdpu;
 sdhci_writel(host, reg, SDHCI_TEGRA_AUTO_CAL_CONFIG);
}
