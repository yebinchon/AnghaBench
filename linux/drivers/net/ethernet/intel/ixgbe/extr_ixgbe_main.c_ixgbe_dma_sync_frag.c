
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ixgbe_ring {int dev; } ;
typedef int skb_frag_t ;
struct TYPE_4__ {int dma; int page_released; } ;
struct TYPE_3__ {int * frags; } ;


 int DMA_FROM_DEVICE ;
 TYPE_2__* IXGBE_CB (struct sk_buff*) ;
 int IXGBE_RX_DMA_ATTR ;
 unsigned long PAGE_MASK ;
 int dma_sync_single_range_for_cpu (int ,int ,unsigned long,int ,int ) ;
 int dma_unmap_page_attrs (int ,int ,int ,int ,int ) ;
 int ixgbe_rx_pg_size (struct ixgbe_ring*) ;
 scalar_t__ ring_uses_build_skb (struct ixgbe_ring*) ;
 unsigned long skb_frag_off (int *) ;
 int skb_frag_size (int *) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void ixgbe_dma_sync_frag(struct ixgbe_ring *rx_ring,
    struct sk_buff *skb)
{
 if (ring_uses_build_skb(rx_ring)) {
  unsigned long offset = (unsigned long)(skb->data) & ~PAGE_MASK;

  dma_sync_single_range_for_cpu(rx_ring->dev,
           IXGBE_CB(skb)->dma,
           offset,
           skb_headlen(skb),
           DMA_FROM_DEVICE);
 } else {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[0];

  dma_sync_single_range_for_cpu(rx_ring->dev,
           IXGBE_CB(skb)->dma,
           skb_frag_off(frag),
           skb_frag_size(frag),
           DMA_FROM_DEVICE);
 }


 if (unlikely(IXGBE_CB(skb)->page_released)) {
  dma_unmap_page_attrs(rx_ring->dev, IXGBE_CB(skb)->dma,
         ixgbe_rx_pg_size(rx_ring),
         DMA_FROM_DEVICE,
         IXGBE_RX_DMA_ATTR);
 }
}
