
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct macb_queue {int * rx_ring; int rx_ring_dma; int * tx_ring; int tx_ring_dma; int * tx_skb; } ;
struct TYPE_3__ {int (* mog_free_rx_buffers ) (struct macb*) ;} ;
struct macb {unsigned int num_queues; int tx_bd_rd_prefetch; int rx_bd_rd_prefetch; TYPE_2__* pdev; struct macb_queue* queues; TYPE_1__ macbgem_ops; } ;
struct TYPE_4__ {int dev; } ;


 int RX_RING_BYTES (struct macb*) ;
 int TX_RING_BYTES (struct macb*) ;
 int dma_free_coherent (int *,int,int *,int ) ;
 int kfree (int *) ;
 int stub1 (struct macb*) ;

__attribute__((used)) static void macb_free_consistent(struct macb *bp)
{
 struct macb_queue *queue;
 unsigned int q;
 int size;

 bp->macbgem_ops.mog_free_rx_buffers(bp);

 for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue) {
  kfree(queue->tx_skb);
  queue->tx_skb = ((void*)0);
  if (queue->tx_ring) {
   size = TX_RING_BYTES(bp) + bp->tx_bd_rd_prefetch;
   dma_free_coherent(&bp->pdev->dev, size,
       queue->tx_ring, queue->tx_ring_dma);
   queue->tx_ring = ((void*)0);
  }
  if (queue->rx_ring) {
   size = RX_RING_BYTES(bp) + bp->rx_bd_rd_prefetch;
   dma_free_coherent(&bp->pdev->dev, size,
       queue->rx_ring, queue->rx_ring_dma);
   queue->rx_ring = ((void*)0);
  }
 }
}
