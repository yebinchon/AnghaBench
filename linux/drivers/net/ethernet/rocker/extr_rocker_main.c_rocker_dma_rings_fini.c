
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker {int cmd_ring; int event_ring; } ;


 int PCI_DMA_BIDIRECTIONAL ;
 int rocker_dma_cmd_ring_waits_free (struct rocker*) ;
 int rocker_dma_ring_bufs_free (struct rocker*,int *,int ) ;
 int rocker_dma_ring_destroy (struct rocker*,int *) ;

__attribute__((used)) static void rocker_dma_rings_fini(struct rocker *rocker)
{
 rocker_dma_ring_bufs_free(rocker, &rocker->event_ring,
      PCI_DMA_BIDIRECTIONAL);
 rocker_dma_ring_destroy(rocker, &rocker->event_ring);
 rocker_dma_cmd_ring_waits_free(rocker);
 rocker_dma_ring_bufs_free(rocker, &rocker->cmd_ring,
      PCI_DMA_BIDIRECTIONAL);
 rocker_dma_ring_destroy(rocker, &rocker->cmd_ring);
}
