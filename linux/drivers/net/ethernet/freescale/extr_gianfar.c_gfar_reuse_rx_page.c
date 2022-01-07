
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct gfar_rx_buff {int page_offset; int dma; } ;
struct gfar_priv_rx_q {size_t next_to_alloc; size_t rx_ring_size; int dev; struct gfar_rx_buff* rx_buff; } ;


 int DMA_FROM_DEVICE ;
 int GFAR_RXB_TRUESIZE ;
 int dma_sync_single_range_for_device (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void gfar_reuse_rx_page(struct gfar_priv_rx_q *rxq,
          struct gfar_rx_buff *old_rxb)
{
 struct gfar_rx_buff *new_rxb;
 u16 nta = rxq->next_to_alloc;

 new_rxb = &rxq->rx_buff[nta];


 nta++;
 rxq->next_to_alloc = (nta < rxq->rx_ring_size) ? nta : 0;


 *new_rxb = *old_rxb;


 dma_sync_single_range_for_device(rxq->dev, old_rxb->dma,
      old_rxb->page_offset,
      GFAR_RXB_TRUESIZE, DMA_FROM_DEVICE);
}
