
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct xdp_buff {unsigned int data_end; unsigned int data; unsigned int data_hard_start; } ;
struct sk_buff {int dummy; } ;
struct ixgbe_rx_buffer {unsigned int page_offset; int pagecnt_bias; int page; int dma; } ;
struct ixgbe_ring {TYPE_1__* q_vector; } ;
struct TYPE_4__ {int dma; } ;
struct TYPE_3__ {int napi; } ;


 int ALIGN (unsigned int,int) ;
 TYPE_2__* IXGBE_CB (struct sk_buff*) ;
 int IXGBE_RXD_STAT_EOP ;
 unsigned int IXGBE_RX_HDR_SIZE ;
 unsigned int L1_CACHE_BYTES ;
 unsigned int SKB_DATA_ALIGN (unsigned int) ;
 int __skb_put (struct sk_buff*,unsigned int) ;
 int ixgbe_rx_pg_size (struct ixgbe_ring*) ;
 int ixgbe_test_staterr (union ixgbe_adv_rx_desc*,int ) ;
 int memcpy (int ,unsigned int,int ) ;
 struct sk_buff* napi_alloc_skb (int *,unsigned int) ;
 unsigned int page_address (int ) ;
 int prefetch (unsigned int) ;
 int skb_add_rx_frag (struct sk_buff*,int ,int ,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *ixgbe_construct_skb(struct ixgbe_ring *rx_ring,
        struct ixgbe_rx_buffer *rx_buffer,
        struct xdp_buff *xdp,
        union ixgbe_adv_rx_desc *rx_desc)
{
 unsigned int size = xdp->data_end - xdp->data;

 unsigned int truesize = ixgbe_rx_pg_size(rx_ring) / 2;




 struct sk_buff *skb;


 prefetch(xdp->data);

 prefetch(xdp->data + L1_CACHE_BYTES);
 skb = napi_alloc_skb(&rx_ring->q_vector->napi, IXGBE_RX_HDR_SIZE);
 if (unlikely(!skb))
  return ((void*)0);

 if (size > IXGBE_RX_HDR_SIZE) {
  if (!ixgbe_test_staterr(rx_desc, IXGBE_RXD_STAT_EOP))
   IXGBE_CB(skb)->dma = rx_buffer->dma;

  skb_add_rx_frag(skb, 0, rx_buffer->page,
    xdp->data - page_address(rx_buffer->page),
    size, truesize);

  rx_buffer->page_offset ^= truesize;



 } else {
  memcpy(__skb_put(skb, size),
         xdp->data, ALIGN(size, sizeof(long)));
  rx_buffer->pagecnt_bias++;
 }

 return skb;
}
