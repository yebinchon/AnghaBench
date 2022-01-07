
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void u8 ;
struct sk_buff {int dev; } ;
struct ice_rx_buf {int page_offset; int pagecnt_bias; int page; } ;
struct ice_ring {int q_index; TYPE_1__* q_vector; } ;
struct TYPE_2__ {int napi; } ;


 int ALIGN (unsigned int,int) ;
 int GFP_ATOMIC ;
 unsigned int ICE_RXBUF_2048 ;
 unsigned int ICE_RX_HDR_SIZE ;
 int L1_CACHE_BYTES ;
 unsigned int SKB_DATA_ALIGN (unsigned int) ;
 int __GFP_NOWARN ;
 struct sk_buff* __napi_alloc_skb (int *,unsigned int,int) ;
 int __skb_put (struct sk_buff*,unsigned int) ;
 unsigned int eth_get_headlen (int ,void*,unsigned int) ;
 int ice_rx_buf_adjust_pg_offset (struct ice_rx_buf*,unsigned int) ;
 int memcpy (int ,void*,int ) ;
 void* page_address (int ) ;
 int prefetch (void*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,int ,int,unsigned int,unsigned int) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *
ice_construct_skb(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf,
    unsigned int size)
{
 void *va = page_address(rx_buf->page) + rx_buf->page_offset;
 unsigned int headlen;
 struct sk_buff *skb;


 prefetch(va);

 prefetch((u8 *)va + L1_CACHE_BYTES);



 skb = __napi_alloc_skb(&rx_ring->q_vector->napi, ICE_RX_HDR_SIZE,
          GFP_ATOMIC | __GFP_NOWARN);
 if (unlikely(!skb))
  return ((void*)0);

 skb_record_rx_queue(skb, rx_ring->q_index);

 headlen = size;
 if (headlen > ICE_RX_HDR_SIZE)
  headlen = eth_get_headlen(skb->dev, va, ICE_RX_HDR_SIZE);


 memcpy(__skb_put(skb, headlen), va, ALIGN(headlen, sizeof(long)));


 size -= headlen;
 if (size) {



  unsigned int truesize = ICE_RXBUF_2048;

  skb_add_rx_frag(skb, 0, rx_buf->page,
    rx_buf->page_offset + headlen, size, truesize);

  ice_rx_buf_adjust_pg_offset(rx_buf, truesize);
 } else {




  rx_buf->pagecnt_bias++;
 }

 return skb;
}
