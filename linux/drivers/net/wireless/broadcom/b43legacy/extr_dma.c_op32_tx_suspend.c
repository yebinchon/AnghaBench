
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_dmaring {int dummy; } ;


 int B43legacy_DMA32_TXCTL ;
 int B43legacy_DMA32_TXSUSPEND ;
 int b43legacy_dma_read (struct b43legacy_dmaring*,int ) ;
 int b43legacy_dma_write (struct b43legacy_dmaring*,int ,int) ;

__attribute__((used)) static void op32_tx_suspend(struct b43legacy_dmaring *ring)
{
 b43legacy_dma_write(ring, B43legacy_DMA32_TXCTL,
       b43legacy_dma_read(ring, B43legacy_DMA32_TXCTL)
       | B43legacy_DMA32_TXSUSPEND);
}
