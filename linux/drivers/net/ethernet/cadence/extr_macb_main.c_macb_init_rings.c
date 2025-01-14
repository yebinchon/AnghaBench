
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct macb_dma_desc {int ctrl; } ;
struct macb {int tx_ring_size; TYPE_1__* queues; } ;
struct TYPE_3__ {scalar_t__ tx_tail; scalar_t__ tx_head; } ;


 int MACB_BIT (int ) ;
 int TX_USED ;
 int TX_WRAP ;
 int macb_init_rx_ring (TYPE_1__*) ;
 int macb_set_addr (struct macb*,struct macb_dma_desc*,int ) ;
 struct macb_dma_desc* macb_tx_desc (TYPE_1__*,int) ;

__attribute__((used)) static void macb_init_rings(struct macb *bp)
{
 int i;
 struct macb_dma_desc *desc = ((void*)0);

 macb_init_rx_ring(&bp->queues[0]);

 for (i = 0; i < bp->tx_ring_size; i++) {
  desc = macb_tx_desc(&bp->queues[0], i);
  macb_set_addr(bp, desc, 0);
  desc->ctrl = MACB_BIT(TX_USED);
 }
 bp->queues[0].tx_head = 0;
 bp->queues[0].tx_tail = 0;
 desc->ctrl |= MACB_BIT(TX_WRAP);
}
