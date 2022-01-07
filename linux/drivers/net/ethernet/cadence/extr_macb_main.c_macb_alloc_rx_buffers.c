
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct macb_queue {int rx_buffers; scalar_t__ rx_buffers_dma; } ;
struct macb {int rx_ring_size; int rx_buffer_size; int dev; TYPE_1__* pdev; struct macb_queue* queues; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int netdev_dbg (int ,char*,int,unsigned long,int ) ;

__attribute__((used)) static int macb_alloc_rx_buffers(struct macb *bp)
{
 struct macb_queue *queue = &bp->queues[0];
 int size;

 size = bp->rx_ring_size * bp->rx_buffer_size;
 queue->rx_buffers = dma_alloc_coherent(&bp->pdev->dev, size,
         &queue->rx_buffers_dma, GFP_KERNEL);
 if (!queue->rx_buffers)
  return -ENOMEM;

 netdev_dbg(bp->dev,
     "Allocated RX buffers of %d bytes at %08lx (mapped %p)\n",
     size, (unsigned long)queue->rx_buffers_dma, queue->rx_buffers);
 return 0;
}
