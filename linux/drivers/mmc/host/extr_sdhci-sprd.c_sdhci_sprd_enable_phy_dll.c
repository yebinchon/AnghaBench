
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int SDHCI_SPRD_DLL_ALL_CPST_EN ;
 int SDHCI_SPRD_DLL_EN ;
 int SDHCI_SPRD_DLL_INIT_COUNT ;
 int SDHCI_SPRD_DLL_PHASE_INTERNAL ;
 int SDHCI_SPRD_DLL_SEARCH_MODE ;
 int SDHCI_SPRD_REG_32_DLL_CFG ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void sdhci_sprd_enable_phy_dll(struct sdhci_host *host)
{
 u32 tmp;

 tmp = sdhci_readl(host, SDHCI_SPRD_REG_32_DLL_CFG);
 tmp &= ~(SDHCI_SPRD_DLL_EN | SDHCI_SPRD_DLL_ALL_CPST_EN);
 sdhci_writel(host, tmp, SDHCI_SPRD_REG_32_DLL_CFG);

 usleep_range(1000, 1250);

 tmp = sdhci_readl(host, SDHCI_SPRD_REG_32_DLL_CFG);
 tmp |= SDHCI_SPRD_DLL_ALL_CPST_EN | SDHCI_SPRD_DLL_SEARCH_MODE |
  SDHCI_SPRD_DLL_INIT_COUNT | SDHCI_SPRD_DLL_PHASE_INTERNAL;
 sdhci_writel(host, tmp, SDHCI_SPRD_REG_32_DLL_CFG);

 usleep_range(1000, 1250);

 tmp = sdhci_readl(host, SDHCI_SPRD_REG_32_DLL_CFG);
 tmp |= SDHCI_SPRD_DLL_EN;
 sdhci_writel(host, tmp, SDHCI_SPRD_REG_32_DLL_CFG);

 usleep_range(1000, 1250);
}
