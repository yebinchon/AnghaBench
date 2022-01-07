
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_rx_swbd {int * page; int dma; int page_offset; } ;
struct enetc_bdr {int dev; } ;


 int DMA_FROM_DEVICE ;
 int ENETC_RXB_DMA_SIZE ;
 int ENETC_RXB_TRUESIZE ;
 int PAGE_SIZE ;
 int dma_sync_single_range_for_device (int ,int ,int ,int ,int ) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int enetc_page_reusable (int *) ;
 int enetc_reuse_page (struct enetc_bdr*,struct enetc_rx_swbd*) ;
 scalar_t__ likely (int ) ;
 int page_ref_inc (int *) ;

__attribute__((used)) static void enetc_put_rx_buff(struct enetc_bdr *rx_ring,
         struct enetc_rx_swbd *rx_swbd)
{
 if (likely(enetc_page_reusable(rx_swbd->page))) {
  rx_swbd->page_offset ^= ENETC_RXB_TRUESIZE;
  page_ref_inc(rx_swbd->page);

  enetc_reuse_page(rx_ring, rx_swbd);


  dma_sync_single_range_for_device(rx_ring->dev, rx_swbd->dma,
       rx_swbd->page_offset,
       ENETC_RXB_DMA_SIZE,
       DMA_FROM_DEVICE);
 } else {
  dma_unmap_page(rx_ring->dev, rx_swbd->dma,
          PAGE_SIZE, DMA_FROM_DEVICE);
 }

 rx_swbd->page = ((void*)0);
}
