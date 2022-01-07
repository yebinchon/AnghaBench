
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmt_mci_priv {scalar_t__ sdmmc_base; } ;


 int DMA_CCR_RUN ;
 scalar_t__ SDDMA_CCR ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void wmt_dma_start(struct wmt_mci_priv *priv)
{
 u32 reg_tmp;

 reg_tmp = readl(priv->sdmmc_base + SDDMA_CCR);
 writel(reg_tmp | DMA_CCR_RUN, priv->sdmmc_base + SDDMA_CCR);
}
