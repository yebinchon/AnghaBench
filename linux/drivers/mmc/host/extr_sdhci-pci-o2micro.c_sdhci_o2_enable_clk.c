
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {int mmc; } ;


 int SDHCI_CLOCK_CARD_EN ;
 int SDHCI_CLOCK_CONTROL ;
 int SDHCI_CLOCK_INT_EN ;
 int sdhci_o2_enable_internal_clock (struct sdhci_host*) ;
 scalar_t__ sdhci_o2_get_cd (int ) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void sdhci_o2_enable_clk(struct sdhci_host *host, u16 clk)
{

 clk |= SDHCI_CLOCK_INT_EN;
 sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);

 sdhci_o2_enable_internal_clock(host);
 if (sdhci_o2_get_cd(host->mmc)) {
  clk |= SDHCI_CLOCK_CARD_EN;
  sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);
 }
}
