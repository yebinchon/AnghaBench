
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_dma {int dummy; } ;
struct b43_wldev {struct b43_dma dma; } ;


 scalar_t__ b43_using_pio_transfers (struct b43_wldev*) ;
 int destroy_ring (struct b43_dma*,int ) ;
 int rx_ring ;
 int tx_ring_AC_BE ;
 int tx_ring_AC_BK ;
 int tx_ring_AC_VI ;
 int tx_ring_AC_VO ;
 int tx_ring_mcast ;

void b43_dma_free(struct b43_wldev *dev)
{
 struct b43_dma *dma;

 if (b43_using_pio_transfers(dev))
  return;
 dma = &dev->dma;

 destroy_ring(dma, rx_ring);
 destroy_ring(dma, tx_ring_AC_BK);
 destroy_ring(dma, tx_ring_AC_BE);
 destroy_ring(dma, tx_ring_AC_VI);
 destroy_ring(dma, tx_ring_AC_VO);
 destroy_ring(dma, tx_ring_mcast);
}
