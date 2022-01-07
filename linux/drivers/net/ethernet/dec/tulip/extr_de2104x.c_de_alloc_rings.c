
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct de_private {int * rx_ring; int * tx_ring; int ring_dma; int pdev; } ;


 int DE_RING_BYTES ;
 size_t DE_RX_RING_SIZE ;
 int ENOMEM ;
 int de_init_rings (struct de_private*) ;
 int * pci_alloc_consistent (int ,int ,int *) ;

__attribute__((used)) static int de_alloc_rings (struct de_private *de)
{
 de->rx_ring = pci_alloc_consistent(de->pdev, DE_RING_BYTES, &de->ring_dma);
 if (!de->rx_ring)
  return -ENOMEM;
 de->tx_ring = &de->rx_ring[DE_RX_RING_SIZE];
 return de_init_rings(de);
}
