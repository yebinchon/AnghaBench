
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_mci {int dma_64bit_address; int data; } ;


 int BMOD ;
 int CTRL ;
 int PLDMND ;
 int SDMMC_CTRL_DMA_RESET ;
 int SDMMC_CTRL_USE_IDMAC ;
 int SDMMC_IDMAC_ENABLE ;
 int SDMMC_IDMAC_FB ;
 int dw_mci_ctrl_reset (struct dw_mci*,int ) ;
 int dw_mci_idmac_reset (struct dw_mci*) ;
 int dw_mci_prepare_desc32 (struct dw_mci*,int ,unsigned int) ;
 int dw_mci_prepare_desc64 (struct dw_mci*,int ,unsigned int) ;
 int mci_readl (struct dw_mci*,int ) ;
 int mci_writel (struct dw_mci*,int ,int) ;
 int wmb () ;

__attribute__((used)) static int dw_mci_idmac_start_dma(struct dw_mci *host, unsigned int sg_len)
{
 u32 temp;
 int ret;

 if (host->dma_64bit_address == 1)
  ret = dw_mci_prepare_desc64(host, host->data, sg_len);
 else
  ret = dw_mci_prepare_desc32(host, host->data, sg_len);

 if (ret)
  goto out;


 wmb();


 dw_mci_ctrl_reset(host, SDMMC_CTRL_DMA_RESET);
 dw_mci_idmac_reset(host);


 temp = mci_readl(host, CTRL);
 temp |= SDMMC_CTRL_USE_IDMAC;
 mci_writel(host, CTRL, temp);


 wmb();


 temp = mci_readl(host, BMOD);
 temp |= SDMMC_IDMAC_ENABLE | SDMMC_IDMAC_FB;
 mci_writel(host, BMOD, temp);


 mci_writel(host, PLDMND, 1);

out:
 return ret;
}
