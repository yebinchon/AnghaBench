
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {int dummy; } ;


 int SDHCI_SPRD_BIT_DLL_BAK ;
 int SDHCI_SPRD_BIT_DLL_VAL ;
 int SDHCI_SPRD_REG_DEBOUNCE ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;

__attribute__((used)) static void sdhci_sprd_init_config(struct sdhci_host *host)
{
 u16 val;


 val = sdhci_readl(host, SDHCI_SPRD_REG_DEBOUNCE);
 val |= SDHCI_SPRD_BIT_DLL_BAK | SDHCI_SPRD_BIT_DLL_VAL;
 sdhci_writel(host, val, SDHCI_SPRD_REG_DEBOUNCE);
}
