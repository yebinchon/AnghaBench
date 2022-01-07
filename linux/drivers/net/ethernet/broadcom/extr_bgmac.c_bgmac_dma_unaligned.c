
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgmac_dma_ring {scalar_t__ mmio_base; } ;
struct bgmac {int dummy; } ;
typedef enum bgmac_dma_ring_type { ____Placeholder_bgmac_dma_ring_type } bgmac_dma_ring_type ;




 scalar_t__ BGMAC_DMA_RX_RINGLO ;
 scalar_t__ BGMAC_DMA_TX_RINGLO ;
 int bgmac_read (struct bgmac*,scalar_t__) ;
 int bgmac_write (struct bgmac*,scalar_t__,int) ;

__attribute__((used)) static bool bgmac_dma_unaligned(struct bgmac *bgmac,
    struct bgmac_dma_ring *ring,
    enum bgmac_dma_ring_type ring_type)
{
 switch (ring_type) {
 case 128:
  bgmac_write(bgmac, ring->mmio_base + BGMAC_DMA_TX_RINGLO,
       0xff0);
  if (bgmac_read(bgmac, ring->mmio_base + BGMAC_DMA_TX_RINGLO))
   return 1;
  break;
 case 129:
  bgmac_write(bgmac, ring->mmio_base + BGMAC_DMA_RX_RINGLO,
       0xff0);
  if (bgmac_read(bgmac, ring->mmio_base + BGMAC_DMA_RX_RINGLO))
   return 1;
  break;
 }
 return 0;
}
