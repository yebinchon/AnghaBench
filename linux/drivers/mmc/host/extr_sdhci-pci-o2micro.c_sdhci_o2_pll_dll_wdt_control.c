
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int O2_PLL_DLL_WDT_CONTROL1 ;
 int sdhci_readl (struct sdhci_host*,int ) ;

__attribute__((used)) static u32 sdhci_o2_pll_dll_wdt_control(struct sdhci_host *host)
{
 return sdhci_readl(host, O2_PLL_DLL_WDT_CONTROL1);
}
