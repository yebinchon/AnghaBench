
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunxi_mmc_host {int dummy; } ;
struct mmc_data {int flags; } ;


 int MMC_DATA_WRITE ;
 int REG_DMAC ;
 int REG_GCTRL ;
 int REG_IDIE ;
 int SDXC_DMA_ENABLE_BIT ;
 int SDXC_DMA_RESET ;
 int SDXC_IDMAC_FIX_BURST ;
 int SDXC_IDMAC_IDMA_ON ;
 int SDXC_IDMAC_RECEIVE_INTERRUPT ;
 int SDXC_IDMAC_SOFT_RESET ;
 int mmc_readl (struct sunxi_mmc_host*,int ) ;
 int mmc_writel (struct sunxi_mmc_host*,int ,int) ;
 int sunxi_mmc_init_idma_des (struct sunxi_mmc_host*,struct mmc_data*) ;

__attribute__((used)) static void sunxi_mmc_start_dma(struct sunxi_mmc_host *host,
    struct mmc_data *data)
{
 u32 rval;

 sunxi_mmc_init_idma_des(host, data);

 rval = mmc_readl(host, REG_GCTRL);
 rval |= SDXC_DMA_ENABLE_BIT;
 mmc_writel(host, REG_GCTRL, rval);
 rval |= SDXC_DMA_RESET;
 mmc_writel(host, REG_GCTRL, rval);

 mmc_writel(host, REG_DMAC, SDXC_IDMAC_SOFT_RESET);

 if (!(data->flags & MMC_DATA_WRITE))
  mmc_writel(host, REG_IDIE, SDXC_IDMAC_RECEIVE_INTERRUPT);

 mmc_writel(host, REG_DMAC,
     SDXC_IDMAC_FIX_BURST | SDXC_IDMAC_IDMA_ON);
}
