
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_tx_buffer {int tx_flags; int * skb; int * next_to_watch; int xdpf; int raw_buf; } ;
struct i40e_ring {int dev; } ;


 int DMA_TO_DEVICE ;
 int I40E_TX_FLAGS_FD_SB ;
 int dev_kfree_skb_any (int *) ;
 int dma ;
 int dma_unmap_addr (struct i40e_tx_buffer*,int ) ;
 scalar_t__ dma_unmap_len (struct i40e_tx_buffer*,int ) ;
 int dma_unmap_len_set (struct i40e_tx_buffer*,int ,int ) ;
 int dma_unmap_page (int ,int ,scalar_t__,int ) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 int kfree (int ) ;
 int len ;
 scalar_t__ ring_is_xdp (struct i40e_ring*) ;
 int xdp_return_frame (int ) ;

__attribute__((used)) static void i40e_unmap_and_free_tx_resource(struct i40e_ring *ring,
         struct i40e_tx_buffer *tx_buffer)
{
 if (tx_buffer->skb) {
  if (tx_buffer->tx_flags & I40E_TX_FLAGS_FD_SB)
   kfree(tx_buffer->raw_buf);
  else if (ring_is_xdp(ring))
   xdp_return_frame(tx_buffer->xdpf);
  else
   dev_kfree_skb_any(tx_buffer->skb);
  if (dma_unmap_len(tx_buffer, len))
   dma_unmap_single(ring->dev,
      dma_unmap_addr(tx_buffer, dma),
      dma_unmap_len(tx_buffer, len),
      DMA_TO_DEVICE);
 } else if (dma_unmap_len(tx_buffer, len)) {
  dma_unmap_page(ring->dev,
          dma_unmap_addr(tx_buffer, dma),
          dma_unmap_len(tx_buffer, len),
          DMA_TO_DEVICE);
 }

 tx_buffer->next_to_watch = ((void*)0);
 tx_buffer->skb = ((void*)0);
 dma_unmap_len_set(tx_buffer, len, 0);

}
