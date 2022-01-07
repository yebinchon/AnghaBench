
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {scalar_t__ ioaddr; int mmc; } ;


 scalar_t__ ESDHC_MIX_CTRL ;
 int ESDHC_MIX_CTRL_EXE_TUNE ;
 int ESDHC_MIX_CTRL_FBCLK_SEL ;
 int ESDHC_MIX_CTRL_SMPCLK_SEL ;
 scalar_t__ ESDHC_TUNE_CTRL_STATUS ;
 int dev_dbg (int ,char*,int,int) ;
 int mdelay (int) ;
 int mmc_dev (int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void esdhc_prepare_tuning(struct sdhci_host *host, u32 val)
{
 u32 reg;


 mdelay(1);

 reg = readl(host->ioaddr + ESDHC_MIX_CTRL);
 reg |= ESDHC_MIX_CTRL_EXE_TUNE | ESDHC_MIX_CTRL_SMPCLK_SEL |
   ESDHC_MIX_CTRL_FBCLK_SEL;
 writel(reg, host->ioaddr + ESDHC_MIX_CTRL);
 writel(val << 8, host->ioaddr + ESDHC_TUNE_CTRL_STATUS);
 dev_dbg(mmc_dev(host->mmc),
  "tuning with delay 0x%x ESDHC_TUNE_CTRL_STATUS 0x%x\n",
   val, readl(host->ioaddr + ESDHC_TUNE_CTRL_STATUS));
}
