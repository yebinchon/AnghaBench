
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct fm10k_rx_buffer {int * page; int dma; } ;
struct fm10k_ring {size_t count; unsigned long size; scalar_t__ next_to_use; scalar_t__ next_to_clean; scalar_t__ next_to_alloc; struct fm10k_rx_buffer* desc; struct fm10k_rx_buffer* rx_buffer; int dev; int * skb; } ;


 int DMA_FROM_DEVICE ;
 int PAGE_SIZE ;
 int __free_page (int *) ;
 int dev_kfree_skb (int *) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int memset (struct fm10k_rx_buffer*,int ,unsigned long) ;

__attribute__((used)) static void fm10k_clean_rx_ring(struct fm10k_ring *rx_ring)
{
 unsigned long size;
 u16 i;

 if (!rx_ring->rx_buffer)
  return;

 dev_kfree_skb(rx_ring->skb);
 rx_ring->skb = ((void*)0);


 for (i = 0; i < rx_ring->count; i++) {
  struct fm10k_rx_buffer *buffer = &rx_ring->rx_buffer[i];

  if (!buffer->page)
   continue;

  dma_unmap_page(rx_ring->dev, buffer->dma,
          PAGE_SIZE, DMA_FROM_DEVICE);
  __free_page(buffer->page);

  buffer->page = ((void*)0);
 }

 size = sizeof(struct fm10k_rx_buffer) * rx_ring->count;
 memset(rx_ring->rx_buffer, 0, size);


 memset(rx_ring->desc, 0, rx_ring->size);

 rx_ring->next_to_alloc = 0;
 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;
}
