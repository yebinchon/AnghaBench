
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct macb_queue {int * rx_buffers; int rx_buffers_dma; } ;
struct macb {int rx_ring_size; int rx_buffer_size; TYPE_1__* pdev; struct macb_queue* queues; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int,int *,int ) ;

__attribute__((used)) static void macb_free_rx_buffers(struct macb *bp)
{
 struct macb_queue *queue = &bp->queues[0];

 if (queue->rx_buffers) {
  dma_free_coherent(&bp->pdev->dev,
      bp->rx_ring_size * bp->rx_buffer_size,
      queue->rx_buffers, queue->rx_buffers_dma);
  queue->rx_buffers = ((void*)0);
 }
}
