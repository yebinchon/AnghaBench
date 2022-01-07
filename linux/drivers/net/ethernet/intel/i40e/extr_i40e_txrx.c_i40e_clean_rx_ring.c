
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct i40e_rx_buffer {scalar_t__ page_offset; int * page; int pagecnt_bias; int dma; } ;
struct i40e_ring {size_t count; unsigned long size; scalar_t__ next_to_use; scalar_t__ next_to_clean; scalar_t__ next_to_alloc; struct i40e_rx_buffer* desc; struct i40e_rx_buffer* rx_bi; int dev; int rx_buf_len; scalar_t__ xsk_umem; int * skb; } ;


 int DMA_FROM_DEVICE ;
 int I40E_RX_DMA_ATTR ;
 int __page_frag_cache_drain (int *,int ) ;
 int dev_kfree_skb (int *) ;
 int dma_sync_single_range_for_cpu (int ,int ,scalar_t__,int ,int ) ;
 int dma_unmap_page_attrs (int ,int ,int ,int ,int ) ;
 int i40e_rx_pg_size (struct i40e_ring*) ;
 int i40e_xsk_clean_rx_ring (struct i40e_ring*) ;
 int memset (struct i40e_rx_buffer*,int ,unsigned long) ;

void i40e_clean_rx_ring(struct i40e_ring *rx_ring)
{
 unsigned long bi_size;
 u16 i;


 if (!rx_ring->rx_bi)
  return;

 if (rx_ring->skb) {
  dev_kfree_skb(rx_ring->skb);
  rx_ring->skb = ((void*)0);
 }

 if (rx_ring->xsk_umem) {
  i40e_xsk_clean_rx_ring(rx_ring);
  goto skip_free;
 }


 for (i = 0; i < rx_ring->count; i++) {
  struct i40e_rx_buffer *rx_bi = &rx_ring->rx_bi[i];

  if (!rx_bi->page)
   continue;




  dma_sync_single_range_for_cpu(rx_ring->dev,
           rx_bi->dma,
           rx_bi->page_offset,
           rx_ring->rx_buf_len,
           DMA_FROM_DEVICE);


  dma_unmap_page_attrs(rx_ring->dev, rx_bi->dma,
         i40e_rx_pg_size(rx_ring),
         DMA_FROM_DEVICE,
         I40E_RX_DMA_ATTR);

  __page_frag_cache_drain(rx_bi->page, rx_bi->pagecnt_bias);

  rx_bi->page = ((void*)0);
  rx_bi->page_offset = 0;
 }

skip_free:
 bi_size = sizeof(struct i40e_rx_buffer) * rx_ring->count;
 memset(rx_ring->rx_bi, 0, bi_size);


 memset(rx_ring->desc, 0, rx_ring->size);

 rx_ring->next_to_alloc = 0;
 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;
}
