
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {int tx_ring; int rx_ring; struct rocker* rocker; } ;
struct rocker {int dummy; } ;


 int PCI_DMA_BIDIRECTIONAL ;
 int PCI_DMA_TODEVICE ;
 int rocker_dma_ring_bufs_free (struct rocker*,int *,int ) ;
 int rocker_dma_ring_destroy (struct rocker*,int *) ;
 int rocker_dma_rx_ring_skbs_free (struct rocker_port*) ;

__attribute__((used)) static void rocker_port_dma_rings_fini(struct rocker_port *rocker_port)
{
 struct rocker *rocker = rocker_port->rocker;

 rocker_dma_rx_ring_skbs_free(rocker_port);
 rocker_dma_ring_bufs_free(rocker, &rocker_port->rx_ring,
      PCI_DMA_BIDIRECTIONAL);
 rocker_dma_ring_destroy(rocker, &rocker_port->rx_ring);
 rocker_dma_ring_bufs_free(rocker, &rocker_port->tx_ring,
      PCI_DMA_TODEVICE);
 rocker_dma_ring_destroy(rocker, &rocker_port->tx_ring);
}
