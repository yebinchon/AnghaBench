
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
typedef size_t u16 ;
struct ixgbe_tx_buffer {union ixgbe_adv_tx_desc* next_to_watch; int skb; int xdpf; } ;
struct ixgbe_ring {size_t next_to_clean; size_t next_to_use; size_t count; struct ixgbe_tx_buffer* tx_buffer_info; int dev; scalar_t__ xsk_umem; } ;


 int DMA_TO_DEVICE ;
 union ixgbe_adv_tx_desc* IXGBE_TX_DESC (struct ixgbe_ring*,size_t) ;
 int dev_kfree_skb_any (int ) ;
 int dma ;
 int dma_unmap_addr (struct ixgbe_tx_buffer*,int ) ;
 scalar_t__ dma_unmap_len (struct ixgbe_tx_buffer*,int ) ;
 int dma_unmap_page (int ,int ,scalar_t__,int ) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 int ixgbe_xsk_clean_tx_ring (struct ixgbe_ring*) ;
 int len ;
 int netdev_tx_reset_queue (int ) ;
 scalar_t__ ring_is_xdp (struct ixgbe_ring*) ;
 int txring_txq (struct ixgbe_ring*) ;
 scalar_t__ unlikely (int) ;
 int xdp_return_frame (int ) ;

__attribute__((used)) static void ixgbe_clean_tx_ring(struct ixgbe_ring *tx_ring)
{
 u16 i = tx_ring->next_to_clean;
 struct ixgbe_tx_buffer *tx_buffer = &tx_ring->tx_buffer_info[i];

 if (tx_ring->xsk_umem) {
  ixgbe_xsk_clean_tx_ring(tx_ring);
  goto out;
 }

 while (i != tx_ring->next_to_use) {
  union ixgbe_adv_tx_desc *eop_desc, *tx_desc;


  if (ring_is_xdp(tx_ring))
   xdp_return_frame(tx_buffer->xdpf);
  else
   dev_kfree_skb_any(tx_buffer->skb);


  dma_unmap_single(tx_ring->dev,
     dma_unmap_addr(tx_buffer, dma),
     dma_unmap_len(tx_buffer, len),
     DMA_TO_DEVICE);


  eop_desc = tx_buffer->next_to_watch;
  tx_desc = IXGBE_TX_DESC(tx_ring, i);


  while (tx_desc != eop_desc) {
   tx_buffer++;
   tx_desc++;
   i++;
   if (unlikely(i == tx_ring->count)) {
    i = 0;
    tx_buffer = tx_ring->tx_buffer_info;
    tx_desc = IXGBE_TX_DESC(tx_ring, 0);
   }


   if (dma_unmap_len(tx_buffer, len))
    dma_unmap_page(tx_ring->dev,
            dma_unmap_addr(tx_buffer, dma),
            dma_unmap_len(tx_buffer, len),
            DMA_TO_DEVICE);
  }


  tx_buffer++;
  i++;
  if (unlikely(i == tx_ring->count)) {
   i = 0;
   tx_buffer = tx_ring->tx_buffer_info;
  }
 }


 if (!ring_is_xdp(tx_ring))
  netdev_tx_reset_queue(txring_txq(tx_ring));

out:

 tx_ring->next_to_use = 0;
 tx_ring->next_to_clean = 0;
}
