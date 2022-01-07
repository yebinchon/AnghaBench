
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_rx_buffer {int * page; int pagecnt_bias; int dma; } ;
struct i40e_ring {int dev; } ;


 int DMA_FROM_DEVICE ;
 int I40E_RX_DMA_ATTR ;
 int __page_frag_cache_drain (int *,int ) ;
 int dma_unmap_page_attrs (int ,int ,int ,int ,int ) ;
 scalar_t__ i40e_can_reuse_rx_page (struct i40e_rx_buffer*) ;
 int i40e_reuse_rx_page (struct i40e_ring*,struct i40e_rx_buffer*) ;
 int i40e_rx_pg_size (struct i40e_ring*) ;

__attribute__((used)) static void i40e_put_rx_buffer(struct i40e_ring *rx_ring,
          struct i40e_rx_buffer *rx_buffer)
{
 if (i40e_can_reuse_rx_page(rx_buffer)) {

  i40e_reuse_rx_page(rx_ring, rx_buffer);
 } else {

  dma_unmap_page_attrs(rx_ring->dev, rx_buffer->dma,
         i40e_rx_pg_size(rx_ring),
         DMA_FROM_DEVICE, I40E_RX_DMA_ATTR);
  __page_frag_cache_drain(rx_buffer->page,
     rx_buffer->pagecnt_bias);

  rx_buffer->page = ((void*)0);
 }
}
