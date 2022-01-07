
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunxi_mmc_host {int ferror; } ;
struct mmc_ios {scalar_t__ timing; } ;


 scalar_t__ MMC_TIMING_MMC_DDR52 ;
 scalar_t__ MMC_TIMING_UHS_DDR50 ;
 int REG_GCTRL ;
 int SDXC_DDR_MODE ;
 int mmc_readl (struct sunxi_mmc_host*,int ) ;
 int mmc_writel (struct sunxi_mmc_host*,int ,int ) ;
 int sunxi_mmc_clk_set_rate (struct sunxi_mmc_host*,struct mmc_ios*) ;

__attribute__((used)) static void sunxi_mmc_set_clk(struct sunxi_mmc_host *host, struct mmc_ios *ios)
{
 u32 rval;


 rval = mmc_readl(host, REG_GCTRL);
 if (ios->timing == MMC_TIMING_UHS_DDR50 ||
     ios->timing == MMC_TIMING_MMC_DDR52)
  rval |= SDXC_DDR_MODE;
 else
  rval &= ~SDXC_DDR_MODE;
 mmc_writel(host, REG_GCTRL, rval);

 host->ferror = sunxi_mmc_clk_set_rate(host, ios);

}
