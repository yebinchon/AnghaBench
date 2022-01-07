
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;
struct pic32_sdhci_priv {int base_clk; } ;


 unsigned int clk_get_rate (int ) ;
 struct pic32_sdhci_priv* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static unsigned int pic32_sdhci_get_max_clock(struct sdhci_host *host)
{
 struct pic32_sdhci_priv *sdhci_pdata = sdhci_priv(host);

 return clk_get_rate(sdhci_pdata->base_clk);
}
