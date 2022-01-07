
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunxi_mmc_host {int sdio_imask; int sg_dma; } ;


 int EIO ;
 int REG_DBGC ;
 int REG_DLBA ;
 int REG_FTRGL ;
 int REG_FUNS ;
 int REG_GCTRL ;
 int REG_IMASK ;
 int REG_RINTR ;
 int REG_TMOUT ;
 int SDXC_ACCESS_DONE_DIRECT ;
 int SDXC_CEATA_ON ;
 int SDXC_INTERRUPT_ENABLE_BIT ;
 int mmc_readl (struct sunxi_mmc_host*,int ) ;
 int mmc_writel (struct sunxi_mmc_host*,int ,int) ;
 scalar_t__ sunxi_mmc_reset_host (struct sunxi_mmc_host*) ;

__attribute__((used)) static int sunxi_mmc_init_host(struct sunxi_mmc_host *host)
{
 u32 rval;

 if (sunxi_mmc_reset_host(host))
  return -EIO;






 mmc_writel(host, REG_FTRGL, 0x20070008);

 mmc_writel(host, REG_TMOUT, 0xffffffff);

 mmc_writel(host, REG_IMASK, host->sdio_imask);

 mmc_writel(host, REG_RINTR, 0xffffffff);

 mmc_writel(host, REG_DBGC, 0xdeb);

 mmc_writel(host, REG_FUNS, SDXC_CEATA_ON);

 mmc_writel(host, REG_DLBA, host->sg_dma);

 rval = mmc_readl(host, REG_GCTRL);
 rval |= SDXC_INTERRUPT_ENABLE_BIT;

 rval &= ~SDXC_ACCESS_DONE_DIRECT;
 mmc_writel(host, REG_GCTRL, rval);

 return 0;
}
