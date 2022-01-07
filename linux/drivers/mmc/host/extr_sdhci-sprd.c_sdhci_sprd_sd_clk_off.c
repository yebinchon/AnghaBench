
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {int dummy; } ;


 int SDHCI_CLOCK_CARD_EN ;
 int SDHCI_CLOCK_CONTROL ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static inline void sdhci_sprd_sd_clk_off(struct sdhci_host *host)
{
 u16 ctrl = sdhci_readw(host, SDHCI_CLOCK_CONTROL);

 ctrl &= ~SDHCI_CLOCK_CARD_EN;
 sdhci_writew(host, ctrl, SDHCI_CLOCK_CONTROL);
}
