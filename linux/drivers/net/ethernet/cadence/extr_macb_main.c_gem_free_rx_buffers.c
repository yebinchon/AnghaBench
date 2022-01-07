
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct macb_queue {struct sk_buff** rx_skbuff; } ;
struct macb_dma_desc {int dummy; } ;
struct macb {unsigned int num_queues; int rx_ring_size; int rx_buffer_size; TYPE_1__* pdev; struct macb_queue* queues; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int kfree (struct sk_buff**) ;
 int macb_get_addr (struct macb*,struct macb_dma_desc*) ;
 struct macb_dma_desc* macb_rx_desc (struct macb_queue*,int) ;

__attribute__((used)) static void gem_free_rx_buffers(struct macb *bp)
{
 struct sk_buff *skb;
 struct macb_dma_desc *desc;
 struct macb_queue *queue;
 dma_addr_t addr;
 unsigned int q;
 int i;

 for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue) {
  if (!queue->rx_skbuff)
   continue;

  for (i = 0; i < bp->rx_ring_size; i++) {
   skb = queue->rx_skbuff[i];

   if (!skb)
    continue;

   desc = macb_rx_desc(queue, i);
   addr = macb_get_addr(bp, desc);

   dma_unmap_single(&bp->pdev->dev, addr, bp->rx_buffer_size,
     DMA_FROM_DEVICE);
   dev_kfree_skb_any(skb);
   skb = ((void*)0);
  }

  kfree(queue->rx_skbuff);
  queue->rx_skbuff = ((void*)0);
 }
}
