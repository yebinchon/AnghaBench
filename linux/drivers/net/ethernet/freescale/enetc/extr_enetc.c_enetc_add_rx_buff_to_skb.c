
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct enetc_rx_swbd {int page_offset; int page; } ;
struct enetc_bdr {int dummy; } ;
struct TYPE_2__ {int nr_frags; } ;


 int ENETC_RXB_TRUESIZE ;
 struct enetc_rx_swbd* enetc_get_rx_buff (struct enetc_bdr*,int,int ) ;
 int enetc_put_rx_buff (struct enetc_bdr*,struct enetc_rx_swbd*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,int ,int ,int ,int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void enetc_add_rx_buff_to_skb(struct enetc_bdr *rx_ring, int i,
         u16 size, struct sk_buff *skb)
{
 struct enetc_rx_swbd *rx_swbd = enetc_get_rx_buff(rx_ring, i, size);

 skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_swbd->page,
   rx_swbd->page_offset, size, ENETC_RXB_TRUESIZE);

 enetc_put_rx_buff(rx_ring, rx_swbd);
}
