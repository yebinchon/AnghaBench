
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int SDHCI_CLOCK_CARD_EN ;
 int SDHCI_CLOCK_CONTROL ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,int,int ) ;

__attribute__((used)) static bool tegra_sdhci_configure_card_clk(struct sdhci_host *host, bool enable)
{
 bool status;
 u32 reg;

 reg = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
 status = !!(reg & SDHCI_CLOCK_CARD_EN);

 if (status == enable)
  return status;

 if (enable)
  reg |= SDHCI_CLOCK_CARD_EN;
 else
  reg &= ~SDHCI_CLOCK_CARD_EN;

 sdhci_writew(host, reg, SDHCI_CLOCK_CONTROL);

 return status;
}
