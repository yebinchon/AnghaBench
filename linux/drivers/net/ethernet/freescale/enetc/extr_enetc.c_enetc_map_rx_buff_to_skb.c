
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct enetc_rx_swbd {int page_offset; int page; } ;
struct TYPE_2__ {int rx_alloc_errs; } ;
struct enetc_bdr {TYPE_1__ stats; } ;


 int ENETC_RXB_PAD ;
 int ENETC_RXB_TRUESIZE ;
 int __skb_put (struct sk_buff*,int ) ;
 struct sk_buff* build_skb (void*,int ) ;
 struct enetc_rx_swbd* enetc_get_rx_buff (struct enetc_bdr*,int,int ) ;
 int enetc_put_rx_buff (struct enetc_bdr*,struct enetc_rx_swbd*) ;
 void* page_address (int ) ;
 int skb_reserve (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *enetc_map_rx_buff_to_skb(struct enetc_bdr *rx_ring,
      int i, u16 size)
{
 struct enetc_rx_swbd *rx_swbd = enetc_get_rx_buff(rx_ring, i, size);
 struct sk_buff *skb;
 void *ba;

 ba = page_address(rx_swbd->page) + rx_swbd->page_offset;
 skb = build_skb(ba - ENETC_RXB_PAD, ENETC_RXB_TRUESIZE);
 if (unlikely(!skb)) {
  rx_ring->stats.rx_alloc_errs++;
  return ((void*)0);
 }

 skb_reserve(skb, ENETC_RXB_PAD);
 __skb_put(skb, size);

 enetc_put_rx_buff(rx_ring, rx_swbd);

 return skb;
}
