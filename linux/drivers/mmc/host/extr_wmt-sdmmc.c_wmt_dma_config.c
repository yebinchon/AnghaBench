
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct wmt_mci_priv {scalar_t__ sdmmc_base; } ;
struct mmc_host {int dummy; } ;


 int DMA_CCR_IF_TO_PERIPHERAL ;
 int DMA_CCR_PERIPHERAL_TO_IF ;
 int DMA_IER_INT_EN ;
 scalar_t__ PDMA_WRITE ;
 scalar_t__ SDDMA_CCR ;
 scalar_t__ SDDMA_DESPR ;
 scalar_t__ SDDMA_IER ;
 struct wmt_mci_priv* mmc_priv (struct mmc_host*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void wmt_dma_config(struct mmc_host *mmc, u32 descaddr, u8 dir)
{
 struct wmt_mci_priv *priv;
 u32 reg_tmp;

 priv = mmc_priv(mmc);


 writel(DMA_IER_INT_EN, priv->sdmmc_base + SDDMA_IER);


 writel(descaddr, priv->sdmmc_base + SDDMA_DESPR);

 writel(0x00, priv->sdmmc_base + SDDMA_CCR);

 if (dir == PDMA_WRITE) {
  reg_tmp = readl(priv->sdmmc_base + SDDMA_CCR);
  writel(reg_tmp & DMA_CCR_IF_TO_PERIPHERAL, priv->sdmmc_base +
         SDDMA_CCR);
 } else {
  reg_tmp = readl(priv->sdmmc_base + SDDMA_CCR);
  writel(reg_tmp | DMA_CCR_PERIPHERAL_TO_IF, priv->sdmmc_base +
         SDDMA_CCR);
 }
}
