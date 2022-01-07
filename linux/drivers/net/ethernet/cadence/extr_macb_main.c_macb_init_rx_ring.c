
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macb_queue {scalar_t__ rx_tail; int rx_buffers_dma; struct macb* bp; } ;
struct macb_dma_desc {int addr; scalar_t__ ctrl; } ;
struct macb {int rx_ring_size; scalar_t__ rx_buffer_size; } ;
typedef int dma_addr_t ;


 int MACB_BIT (int ) ;
 int RX_WRAP ;
 struct macb_dma_desc* macb_rx_desc (struct macb_queue*,int) ;
 int macb_set_addr (struct macb*,struct macb_dma_desc*,int ) ;

__attribute__((used)) static inline void macb_init_rx_ring(struct macb_queue *queue)
{
 struct macb *bp = queue->bp;
 dma_addr_t addr;
 struct macb_dma_desc *desc = ((void*)0);
 int i;

 addr = queue->rx_buffers_dma;
 for (i = 0; i < bp->rx_ring_size; i++) {
  desc = macb_rx_desc(queue, i);
  macb_set_addr(bp, desc, addr);
  desc->ctrl = 0;
  addr += bp->rx_buffer_size;
 }
 desc->addr |= MACB_BIT(RX_WRAP);
 queue->rx_tail = 0;
}
