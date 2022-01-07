
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macb_queue {int tx_ring_dma; int bp; } ;
typedef int dma_addr_t ;


 int macb_dma_desc_get_size (int ) ;
 int macb_tx_ring_wrap (int ,unsigned int) ;

__attribute__((used)) static dma_addr_t macb_tx_dma(struct macb_queue *queue, unsigned int index)
{
 dma_addr_t offset;

 offset = macb_tx_ring_wrap(queue->bp, index) *
   macb_dma_desc_get_size(queue->bp);

 return queue->tx_ring_dma + offset;
}
