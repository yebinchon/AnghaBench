
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_tx_buffer {int xdpf; } ;
struct i40e_ring {int dev; } ;


 int DMA_TO_DEVICE ;
 int dma ;
 int dma_unmap_addr (struct i40e_tx_buffer*,int ) ;
 int dma_unmap_len (struct i40e_tx_buffer*,int ) ;
 int dma_unmap_len_set (struct i40e_tx_buffer*,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int len ;
 int xdp_return_frame (int ) ;

__attribute__((used)) static void i40e_clean_xdp_tx_buffer(struct i40e_ring *tx_ring,
         struct i40e_tx_buffer *tx_bi)
{
 xdp_return_frame(tx_bi->xdpf);
 dma_unmap_single(tx_ring->dev,
    dma_unmap_addr(tx_bi, dma),
    dma_unmap_len(tx_bi, len), DMA_TO_DEVICE);
 dma_unmap_len_set(tx_bi, len, 0);
}
