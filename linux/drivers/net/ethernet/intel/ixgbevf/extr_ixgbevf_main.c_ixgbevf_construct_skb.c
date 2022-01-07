
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct xdp_buff {unsigned int data_end; unsigned int data; unsigned int data_hard_start; } ;
struct sk_buff {int dev; } ;
struct ixgbevf_rx_buffer {unsigned int page_offset; int pagecnt_bias; int page; } ;
struct ixgbevf_ring {TYPE_1__* q_vector; } ;
struct TYPE_2__ {int napi; } ;


 int ALIGN (unsigned int,int) ;
 unsigned int IXGBEVF_RX_HDR_SIZE ;
 unsigned int L1_CACHE_BYTES ;
 unsigned int SKB_DATA_ALIGN (unsigned int) ;
 int __skb_put (struct sk_buff*,unsigned int) ;
 unsigned int eth_get_headlen (int ,unsigned int,unsigned int) ;
 int ixgbevf_rx_pg_size (struct ixgbevf_ring*) ;
 int memcpy (int ,unsigned int,int ) ;
 struct sk_buff* napi_alloc_skb (int *,unsigned int) ;
 unsigned int page_address (int ) ;
 int prefetch (unsigned int) ;
 int skb_add_rx_frag (struct sk_buff*,int ,int ,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static
struct sk_buff *ixgbevf_construct_skb(struct ixgbevf_ring *rx_ring,
          struct ixgbevf_rx_buffer *rx_buffer,
          struct xdp_buff *xdp,
          union ixgbe_adv_rx_desc *rx_desc)
{
 unsigned int size = xdp->data_end - xdp->data;

 unsigned int truesize = ixgbevf_rx_pg_size(rx_ring) / 2;




 unsigned int headlen;
 struct sk_buff *skb;


 prefetch(xdp->data);

 prefetch(xdp->data + L1_CACHE_BYTES);
 skb = napi_alloc_skb(&rx_ring->q_vector->napi, IXGBEVF_RX_HDR_SIZE);
 if (unlikely(!skb))
  return ((void*)0);


 headlen = size;
 if (headlen > IXGBEVF_RX_HDR_SIZE)
  headlen = eth_get_headlen(skb->dev, xdp->data,
       IXGBEVF_RX_HDR_SIZE);


 memcpy(__skb_put(skb, headlen), xdp->data,
        ALIGN(headlen, sizeof(long)));


 size -= headlen;
 if (size) {
  skb_add_rx_frag(skb, 0, rx_buffer->page,
    (xdp->data + headlen) -
     page_address(rx_buffer->page),
    size, truesize);

  rx_buffer->page_offset ^= truesize;



 } else {
  rx_buffer->pagecnt_bias++;
 }

 return skb;
}
