
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct igc_rx_buffer {unsigned int page_offset; int page; } ;
struct igc_ring {int dummy; } ;
struct TYPE_2__ {int nr_frags; } ;


 unsigned int IGC_SKB_PAD ;
 unsigned int SKB_DATA_ALIGN (unsigned int) ;
 int igc_rx_pg_size (struct igc_ring*) ;
 scalar_t__ ring_uses_build_skb (struct igc_ring*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,int ,unsigned int,unsigned int,unsigned int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void igc_add_rx_frag(struct igc_ring *rx_ring,
       struct igc_rx_buffer *rx_buffer,
       struct sk_buff *skb,
       unsigned int size)
{

 unsigned int truesize = igc_rx_pg_size(rx_ring) / 2;

 skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buffer->page,
   rx_buffer->page_offset, size, truesize);
 rx_buffer->page_offset ^= truesize;
}
