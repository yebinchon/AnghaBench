
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_dmaring {int type; int mmio_base; int dev; scalar_t__ tx; } ;


 int B43legacy_DMA32_RXRING ;
 int B43legacy_DMA32_TXRING ;
 int b43legacy_dma_write (struct b43legacy_dmaring*,int ,int ) ;
 int b43legacy_dmacontroller_rx_reset (int ,int ,int ) ;
 int b43legacy_dmacontroller_tx_reset (int ,int ,int ) ;

__attribute__((used)) static void dmacontroller_cleanup(struct b43legacy_dmaring *ring)
{
 if (ring->tx) {
  b43legacy_dmacontroller_tx_reset(ring->dev, ring->mmio_base,
       ring->type);
  b43legacy_dma_write(ring, B43legacy_DMA32_TXRING, 0);
 } else {
  b43legacy_dmacontroller_rx_reset(ring->dev, ring->mmio_base,
       ring->type);
  b43legacy_dma_write(ring, B43legacy_DMA32_RXRING, 0);
 }
}
