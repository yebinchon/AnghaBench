
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int SDHCI_TEGRA_SDMEM_COMP_PADCTRL ;
 int SDHCI_TEGRA_SDMEM_COMP_PADCTRL_E_INPUT_E_PWRD ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tegra_sdhci_configure_cal_pad(struct sdhci_host *host, bool enable)
{
 u32 val;





 val = sdhci_readl(host, SDHCI_TEGRA_SDMEM_COMP_PADCTRL);

 if (enable)
  val |= SDHCI_TEGRA_SDMEM_COMP_PADCTRL_E_INPUT_E_PWRD;
 else
  val &= ~SDHCI_TEGRA_SDMEM_COMP_PADCTRL_E_INPUT_E_PWRD;

 sdhci_writel(host, val, SDHCI_TEGRA_SDMEM_COMP_PADCTRL);

 if (enable)
  usleep_range(1, 2);
}
