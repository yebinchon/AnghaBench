
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sdhci_pltfm_host {int clk; } ;


 scalar_t__ DIV_ROUND_UP (int ,unsigned int) ;
 scalar_t__ SYSCTL_CLKD_MAX ;
 int clk_get_rate (int ) ;

__attribute__((used)) static u16 sdhci_omap_calc_divisor(struct sdhci_pltfm_host *host,
       unsigned int clock)
{
 u16 dsor;

 dsor = DIV_ROUND_UP(clk_get_rate(host->clk), clock);
 if (dsor > SYSCTL_CLKD_MAX)
  dsor = SYSCTL_CLKD_MAX;

 return dsor;
}
