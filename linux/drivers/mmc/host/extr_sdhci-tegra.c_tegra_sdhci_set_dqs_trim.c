
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int SDHCI_TEGRA_CAP_OVERRIDES_DQS_TRIM_MASK ;
 int SDHCI_TEGRA_CAP_OVERRIDES_DQS_TRIM_SHIFT ;
 int SDHCI_TEGRA_VENDOR_CAP_OVERRIDES ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;

__attribute__((used)) static void tegra_sdhci_set_dqs_trim(struct sdhci_host *host, u8 trim)
{
 u32 val;

 val = sdhci_readl(host, SDHCI_TEGRA_VENDOR_CAP_OVERRIDES);
 val &= ~SDHCI_TEGRA_CAP_OVERRIDES_DQS_TRIM_MASK;
 val |= trim << SDHCI_TEGRA_CAP_OVERRIDES_DQS_TRIM_SHIFT;
 sdhci_writel(host, val, SDHCI_TEGRA_VENDOR_CAP_OVERRIDES);
}
