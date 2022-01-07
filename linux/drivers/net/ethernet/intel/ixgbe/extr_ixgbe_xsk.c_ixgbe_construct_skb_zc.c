
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_buff {unsigned int data; unsigned int data_meta; unsigned int data_end; unsigned int data_hard_start; } ;
struct sk_buff {int dummy; } ;
struct ixgbe_rx_buffer {int dummy; } ;
struct ixgbe_ring {TYPE_1__* q_vector; } ;
struct TYPE_2__ {int napi; } ;


 int GFP_ATOMIC ;
 int __GFP_NOWARN ;
 struct sk_buff* __napi_alloc_skb (int *,unsigned int,int) ;
 int __skb_put (struct sk_buff*,unsigned int) ;
 int ixgbe_reuse_rx_buffer_zc (struct ixgbe_ring*,struct ixgbe_rx_buffer*) ;
 int memcpy (int ,unsigned int,unsigned int) ;
 int skb_metadata_set (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *ixgbe_construct_skb_zc(struct ixgbe_ring *rx_ring,
           struct ixgbe_rx_buffer *bi,
           struct xdp_buff *xdp)
{
 unsigned int metasize = xdp->data - xdp->data_meta;
 unsigned int datasize = xdp->data_end - xdp->data;
 struct sk_buff *skb;


 skb = __napi_alloc_skb(&rx_ring->q_vector->napi,
          xdp->data_end - xdp->data_hard_start,
          GFP_ATOMIC | __GFP_NOWARN);
 if (unlikely(!skb))
  return ((void*)0);

 skb_reserve(skb, xdp->data - xdp->data_hard_start);
 memcpy(__skb_put(skb, datasize), xdp->data, datasize);
 if (metasize)
  skb_metadata_set(skb, metasize);

 ixgbe_reuse_rx_buffer_zc(rx_ring, bi);
 return skb;
}
