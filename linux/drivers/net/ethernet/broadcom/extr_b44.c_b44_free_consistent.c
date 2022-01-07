
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b44 {int flags; int * tx_ring; int tx_ring_dma; TYPE_1__* sdev; int * rx_ring; int rx_ring_dma; int * tx_buffers; int * rx_buffers; } ;
struct TYPE_2__ {int dma_dev; } ;


 int B44_FLAG_RX_RING_HACK ;
 int B44_FLAG_TX_RING_HACK ;
 int DMA_BIDIRECTIONAL ;
 int DMA_TABLE_BYTES ;
 int DMA_TO_DEVICE ;
 int dma_free_coherent (int ,int ,int *,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void b44_free_consistent(struct b44 *bp)
{
 kfree(bp->rx_buffers);
 bp->rx_buffers = ((void*)0);
 kfree(bp->tx_buffers);
 bp->tx_buffers = ((void*)0);
 if (bp->rx_ring) {
  if (bp->flags & B44_FLAG_RX_RING_HACK) {
   dma_unmap_single(bp->sdev->dma_dev, bp->rx_ring_dma,
      DMA_TABLE_BYTES, DMA_BIDIRECTIONAL);
   kfree(bp->rx_ring);
  } else
   dma_free_coherent(bp->sdev->dma_dev, DMA_TABLE_BYTES,
       bp->rx_ring, bp->rx_ring_dma);
  bp->rx_ring = ((void*)0);
  bp->flags &= ~B44_FLAG_RX_RING_HACK;
 }
 if (bp->tx_ring) {
  if (bp->flags & B44_FLAG_TX_RING_HACK) {
   dma_unmap_single(bp->sdev->dma_dev, bp->tx_ring_dma,
      DMA_TABLE_BYTES, DMA_TO_DEVICE);
   kfree(bp->tx_ring);
  } else
   dma_free_coherent(bp->sdev->dma_dev, DMA_TABLE_BYTES,
       bp->tx_ring, bp->tx_ring_dma);
  bp->tx_ring = ((void*)0);
  bp->flags &= ~B44_FLAG_TX_RING_HACK;
 }
}
