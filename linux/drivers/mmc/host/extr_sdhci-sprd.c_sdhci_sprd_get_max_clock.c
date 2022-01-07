
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_sprd_host {int clk_sdio; } ;
struct sdhci_host {int dummy; } ;


 struct sdhci_sprd_host* TO_SPRD_HOST (struct sdhci_host*) ;
 int ULONG_MAX ;
 unsigned int clk_round_rate (int ,int ) ;

__attribute__((used)) static unsigned int sdhci_sprd_get_max_clock(struct sdhci_host *host)
{
 struct sdhci_sprd_host *sprd_host = TO_SPRD_HOST(host);

 return clk_round_rate(sprd_host->clk_sdio, ULONG_MAX);
}
