
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct sdhci_tegra_soc_data {int nvquirks; } ;
struct sdhci_tegra {struct sdhci_tegra_soc_data* soc_data; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;


 int NVQUIRK_DIS_CARD_CLK_CONFIG_TAP ;
 unsigned int SDHCI_CLOCK_CTRL_TAP_MASK ;
 unsigned int SDHCI_CLOCK_CTRL_TAP_SHIFT ;
 int SDHCI_RESET_CMD ;
 int SDHCI_RESET_DATA ;
 int SDHCI_TEGRA_VENDOR_CLOCK_CTRL ;
 struct sdhci_tegra* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 unsigned int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_reset (struct sdhci_host*,int) ;
 int sdhci_writel (struct sdhci_host*,unsigned int,int ) ;
 int tegra_sdhci_configure_card_clk (struct sdhci_host*,int) ;
 int udelay (int) ;

__attribute__((used)) static void tegra_sdhci_set_tap(struct sdhci_host *host, unsigned int tap)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_tegra *tegra_host = sdhci_pltfm_priv(pltfm_host);
 const struct sdhci_tegra_soc_data *soc_data = tegra_host->soc_data;
 bool card_clk_enabled = 0;
 u32 reg;







 if (soc_data->nvquirks & NVQUIRK_DIS_CARD_CLK_CONFIG_TAP)
  card_clk_enabled = tegra_sdhci_configure_card_clk(host, 0);

 reg = sdhci_readl(host, SDHCI_TEGRA_VENDOR_CLOCK_CTRL);
 reg &= ~SDHCI_CLOCK_CTRL_TAP_MASK;
 reg |= tap << SDHCI_CLOCK_CTRL_TAP_SHIFT;
 sdhci_writel(host, reg, SDHCI_TEGRA_VENDOR_CLOCK_CTRL);

 if (soc_data->nvquirks & NVQUIRK_DIS_CARD_CLK_CONFIG_TAP &&
     card_clk_enabled) {
  udelay(1);
  sdhci_reset(host, SDHCI_RESET_CMD | SDHCI_RESET_DATA);
  tegra_sdhci_configure_card_clk(host, card_clk_enabled);
 }
}
