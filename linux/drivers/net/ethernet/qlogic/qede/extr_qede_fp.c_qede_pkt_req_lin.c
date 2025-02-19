
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int nr_frags; } ;


 int ETH_TX_MAX_BDS_PER_NON_LSO_PACKET ;
 int XMIT_ENC ;
 int XMIT_LSO ;
 int qede_get_skb_hlen (struct sk_buff*,int) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static bool qede_pkt_req_lin(struct sk_buff *skb, u8 xmit_type)
{
 int allowed_frags = ETH_TX_MAX_BDS_PER_NON_LSO_PACKET - 1;

 if (xmit_type & XMIT_LSO) {
  int hlen;

  hlen = qede_get_skb_hlen(skb, xmit_type & XMIT_ENC);


  if (skb_headlen(skb) > hlen)
   allowed_frags--;
 }

 return (skb_shinfo(skb)->nr_frags > allowed_frags);
}
