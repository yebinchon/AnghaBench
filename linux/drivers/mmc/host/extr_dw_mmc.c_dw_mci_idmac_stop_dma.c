
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_mci {int dummy; } ;


 int BMOD ;
 int CTRL ;
 int SDMMC_CTRL_DMA_RESET ;
 int SDMMC_CTRL_USE_IDMAC ;
 int SDMMC_IDMAC_ENABLE ;
 int SDMMC_IDMAC_FB ;
 int SDMMC_IDMAC_SWRESET ;
 int mci_readl (struct dw_mci*,int ) ;
 int mci_writel (struct dw_mci*,int ,int) ;

__attribute__((used)) static void dw_mci_idmac_stop_dma(struct dw_mci *host)
{
 u32 temp;


 temp = mci_readl(host, CTRL);
 temp &= ~SDMMC_CTRL_USE_IDMAC;
 temp |= SDMMC_CTRL_DMA_RESET;
 mci_writel(host, CTRL, temp);


 temp = mci_readl(host, BMOD);
 temp &= ~(SDMMC_IDMAC_ENABLE | SDMMC_IDMAC_FB);
 temp |= SDMMC_IDMAC_SWRESET;
 mci_writel(host, BMOD, temp);
}
