
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgmac_dma_ring {scalar_t__ mmio_base; } ;
struct bgmac {int dev; } ;


 scalar_t__ BGMAC_DMA_RX_CTL ;
 int BGMAC_DMA_RX_STAT ;
 scalar_t__ BGMAC_DMA_RX_STATUS ;
 int BGMAC_DMA_RX_STAT_DISABLED ;
 int bgmac_wait_value (struct bgmac*,scalar_t__,int ,int ,int) ;
 int bgmac_write (struct bgmac*,scalar_t__,int ) ;
 int dev_err (int ,char*,scalar_t__) ;

__attribute__((used)) static void bgmac_dma_rx_reset(struct bgmac *bgmac, struct bgmac_dma_ring *ring)
{
 if (!ring->mmio_base)
  return;

 bgmac_write(bgmac, ring->mmio_base + BGMAC_DMA_RX_CTL, 0);
 if (!bgmac_wait_value(bgmac,
         ring->mmio_base + BGMAC_DMA_RX_STATUS,
         BGMAC_DMA_RX_STAT, BGMAC_DMA_RX_STAT_DISABLED,
         10000))
  dev_err(bgmac->dev, "Reset of ring 0x%X RX failed\n",
   ring->mmio_base);
}
