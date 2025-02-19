
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {unsigned int clock; } ;


 int SDHCI_CLOCK_CONTROL ;
 int SDHCI_SPRD_BIT_CMD_DLY_INV ;
 int SDHCI_SPRD_BIT_POSRD_DLY_INV ;
 unsigned int SDHCI_SPRD_PHY_DLL_CLK ;
 int _sdhci_sprd_set_clock (struct sdhci_host*,unsigned int) ;
 int sdhci_sprd_enable_phy_dll (struct sdhci_host*) ;
 int sdhci_sprd_sd_clk_off (struct sdhci_host*) ;
 int sdhci_sprd_set_dll_invert (struct sdhci_host*,int,int) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void sdhci_sprd_set_clock(struct sdhci_host *host, unsigned int clock)
{
 bool en = 0, clk_changed = 0;

 if (clock == 0) {
  sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);
 } else if (clock != host->clock) {
  sdhci_sprd_sd_clk_off(host);
  _sdhci_sprd_set_clock(host, clock);

  if (clock <= 400000)
   en = 1;
  sdhci_sprd_set_dll_invert(host, SDHCI_SPRD_BIT_CMD_DLY_INV |
       SDHCI_SPRD_BIT_POSRD_DLY_INV, en);
  clk_changed = 1;
 } else {
  _sdhci_sprd_set_clock(host, clock);
 }







 if (clk_changed && clock > SDHCI_SPRD_PHY_DLL_CLK)
  sdhci_sprd_enable_phy_dll(host);
}
