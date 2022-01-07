
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {unsigned int max_clk; } ;
struct sdhci_arasan_data {int is_phy_on; int quirks; int phy; } ;


 int IS_ERR (int ) ;
 unsigned int PHY_CLK_TOO_SLOW_HZ ;
 int SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE ;
 int msleep (int) ;
 int phy_power_off (int ) ;
 int phy_power_on (int ) ;
 struct sdhci_arasan_data* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_set_clock (struct sdhci_host*,unsigned int) ;

__attribute__((used)) static void sdhci_arasan_set_clock(struct sdhci_host *host, unsigned int clock)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_arasan_data *sdhci_arasan = sdhci_pltfm_priv(pltfm_host);
 bool ctrl_phy = 0;

 if (!IS_ERR(sdhci_arasan->phy)) {
  if (!sdhci_arasan->is_phy_on && clock <= PHY_CLK_TOO_SLOW_HZ) {
   sdhci_set_clock(host, host->max_clk);
   phy_power_on(sdhci_arasan->phy);
   sdhci_arasan->is_phy_on = 1;






  } else if (clock > PHY_CLK_TOO_SLOW_HZ) {





   ctrl_phy = 1;
  }
 }

 if (ctrl_phy && sdhci_arasan->is_phy_on) {
  phy_power_off(sdhci_arasan->phy);
  sdhci_arasan->is_phy_on = 0;
 }

 sdhci_set_clock(host, clock);

 if (sdhci_arasan->quirks & SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE)







  msleep(20);

 if (ctrl_phy) {
  phy_power_on(sdhci_arasan->phy);
  sdhci_arasan->is_phy_on = 1;
 }
}
