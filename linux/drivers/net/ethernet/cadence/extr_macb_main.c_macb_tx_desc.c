
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macb_queue {struct macb_dma_desc* tx_ring; int bp; } ;
struct macb_dma_desc {int dummy; } ;


 unsigned int macb_adj_dma_desc_idx (int ,unsigned int) ;
 unsigned int macb_tx_ring_wrap (int ,unsigned int) ;

__attribute__((used)) static struct macb_dma_desc *macb_tx_desc(struct macb_queue *queue,
       unsigned int index)
{
 index = macb_tx_ring_wrap(queue->bp, index);
 index = macb_adj_dma_desc_idx(queue->bp, index);
 return &queue->tx_ring[index];
}
