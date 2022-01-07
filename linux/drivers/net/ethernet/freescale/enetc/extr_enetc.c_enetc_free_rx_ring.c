
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_rx_swbd {int * page; int dma; } ;
struct enetc_bdr {int bd_count; scalar_t__ next_to_alloc; scalar_t__ next_to_use; scalar_t__ next_to_clean; int dev; struct enetc_rx_swbd* rx_swbd; } ;


 int DMA_FROM_DEVICE ;
 int PAGE_SIZE ;
 int __free_page (int *) ;
 int dma_unmap_page (int ,int ,int ,int ) ;

__attribute__((used)) static void enetc_free_rx_ring(struct enetc_bdr *rx_ring)
{
 int i;

 if (!rx_ring->rx_swbd)
  return;

 for (i = 0; i < rx_ring->bd_count; i++) {
  struct enetc_rx_swbd *rx_swbd = &rx_ring->rx_swbd[i];

  if (!rx_swbd->page)
   continue;

  dma_unmap_page(rx_ring->dev, rx_swbd->dma,
          PAGE_SIZE, DMA_FROM_DEVICE);
  __free_page(rx_swbd->page);
  rx_swbd->page = ((void*)0);
 }

 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;
 rx_ring->next_to_alloc = 0;
}
