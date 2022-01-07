
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_buff {unsigned int data; unsigned int data_meta; int data_end; int data_hard_start; } ;
struct skb_shared_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct i40e_rx_buffer {unsigned int page_offset; } ;
struct i40e_ring {int dummy; } ;


 unsigned int L1_CACHE_BYTES ;
 unsigned int SKB_DATA_ALIGN (int) ;
 int __skb_put (struct sk_buff*,unsigned int) ;
 struct sk_buff* build_skb (int,unsigned int) ;
 int i40e_rx_pg_size (struct i40e_ring*) ;
 int prefetch (unsigned int) ;
 int skb_metadata_set (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *i40e_build_skb(struct i40e_ring *rx_ring,
          struct i40e_rx_buffer *rx_buffer,
          struct xdp_buff *xdp)
{
 unsigned int metasize = xdp->data - xdp->data_meta;

 unsigned int truesize = i40e_rx_pg_size(rx_ring) / 2;





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



 rx_buffer->page_offset ^= truesize;




 return skb;
}
