
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 scalar_t__ ESDHC_MIX_CTRL ;
 int ESDHC_MIX_CTRL_AUTO_TUNE_EN ;
 int ESDHC_MIX_CTRL_EXE_TUNE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void esdhc_post_tuning(struct sdhci_host *host)
{
 u32 reg;

 reg = readl(host->ioaddr + ESDHC_MIX_CTRL);
 reg &= ~ESDHC_MIX_CTRL_EXE_TUNE;
 reg |= ESDHC_MIX_CTRL_AUTO_TUNE_EN;
 writel(reg, host->ioaddr + ESDHC_MIX_CTRL);
}
