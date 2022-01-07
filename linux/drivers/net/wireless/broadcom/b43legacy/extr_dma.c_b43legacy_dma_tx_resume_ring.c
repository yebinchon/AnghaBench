
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_dmaring {int tx; } ;


 int B43legacy_WARN_ON (int) ;
 int op32_tx_resume (struct b43legacy_dmaring*) ;

__attribute__((used)) static void b43legacy_dma_tx_resume_ring(struct b43legacy_dmaring *ring)
{
 B43legacy_WARN_ON(!ring->tx);
 op32_tx_resume(ring);
}
