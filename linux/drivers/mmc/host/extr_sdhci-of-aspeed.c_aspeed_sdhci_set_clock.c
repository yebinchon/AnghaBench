
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_pltfm_host {int clk; } ;
struct sdhci_host {unsigned int max_clk; } ;


 int SDHCI_CLOCK_CONTROL ;
 int SDHCI_DIVIDER_SHIFT ;
 scalar_t__ WARN_ON (int) ;
 unsigned long clk_get_rate (int ) ;
 int sdhci_enable_clk (struct sdhci_host*,int) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void aspeed_sdhci_set_clock(struct sdhci_host *host, unsigned int clock)
{
 struct sdhci_pltfm_host *pltfm_host;
 unsigned long parent;
 int div;
 u16 clk;

 pltfm_host = sdhci_priv(host);
 parent = clk_get_rate(pltfm_host->clk);

 sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);

 if (clock == 0)
  return;

 if (WARN_ON(clock > host->max_clk))
  clock = host->max_clk;

 for (div = 1; div < 256; div *= 2) {
  if ((parent / div) <= clock)
   break;
 }
 div >>= 1;

 clk = div << SDHCI_DIVIDER_SHIFT;

 sdhci_enable_clk(host, clk);
}
