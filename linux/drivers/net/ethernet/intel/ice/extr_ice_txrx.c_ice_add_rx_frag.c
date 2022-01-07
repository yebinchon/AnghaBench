
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ice_rx_buf {int page_offset; int page; } ;
struct TYPE_2__ {int nr_frags; } ;


 unsigned int ICE_RXBUF_2048 ;
 unsigned int SKB_DATA_ALIGN (unsigned int) ;
 int ice_rx_buf_adjust_pg_offset (struct ice_rx_buf*,unsigned int) ;
 int skb_add_rx_frag (struct sk_buff*,int ,int ,int ,unsigned int,unsigned int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void
ice_add_rx_frag(struct ice_rx_buf *rx_buf, struct sk_buff *skb,
  unsigned int size)
{



 unsigned int truesize = ICE_RXBUF_2048;


 if (!size)
  return;
 skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buf->page,
   rx_buf->page_offset, size, truesize);


 ice_rx_buf_adjust_pg_offset(rx_buf, truesize);
}
