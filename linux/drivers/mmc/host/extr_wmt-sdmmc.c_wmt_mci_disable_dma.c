
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmt_mci_priv {scalar_t__ sdmmc_base; } ;


 int DMA_ISR_INT_STS ;
 scalar_t__ SDDMA_IER ;
 scalar_t__ SDDMA_ISR ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void wmt_mci_disable_dma(struct wmt_mci_priv *priv)
{
 writel(DMA_ISR_INT_STS, priv->sdmmc_base + SDDMA_ISR);
 writel(0, priv->sdmmc_base + SDDMA_IER);
}
