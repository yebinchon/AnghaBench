
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct xdp_buff {unsigned int data; unsigned int data_meta; int data_end; int data_hard_start; } ;
struct skb_shared_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ixgbe_rx_buffer {unsigned int page_offset; int dma; } ;
struct ixgbe_ring {int dummy; } ;
struct TYPE_2__ {int dma; } ;


 TYPE_1__* IXGBE_CB (struct sk_buff*) ;
 int IXGBE_RXD_STAT_EOP ;
 unsigned int L1_CACHE_BYTES ;
 unsigned int SKB_DATA_ALIGN (int) ;
 int __skb_put (struct sk_buff*,unsigned int) ;
 struct sk_buff* build_skb (int,unsigned int) ;
 int ixgbe_rx_pg_size (struct ixgbe_ring*) ;
 int ixgbe_test_staterr (union ixgbe_adv_rx_desc*,int ) ;
 int prefetch (unsigned int) ;
 int skb_metadata_set (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *ixgbe_build_skb(struct ixgbe_ring *rx_ring,
           struct ixgbe_rx_buffer *rx_buffer,
           struct xdp_buff *xdp,
           union ixgbe_adv_rx_desc *rx_desc)
{
 unsigned int metasize = xdp->data - xdp->data_meta;

 unsigned int truesize = ixgbe_rx_pg_size(rx_ring) / 2;





 struct sk_buff *skb;






 prefetch(xdp->data_meta);

 prefetch(xdp->data_meta + L1_CACHE_BYTES);



 skb = build_skb(xdp->data_hard_start, truesize);
 if (unlikely(!skb))
  return ((void*)0);


 skb_reserve(skb, xdp->data - xdp->data_hard_start);
 __skb_put(skb, xdp->data_end - xdp->data);
 if (metasize)
  skb_metadata_set(skb, metasize);


 if (!ixgbe_test_staterr(rx_desc, IXGBE_RXD_STAT_EOP))
  IXGBE_CB(skb)->dma = rx_buffer->dma;



 rx_buffer->page_offset ^= truesize;




 return skb;
}
