
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z8530_channel {int netdevice; } ;
struct sk_buff {int dev; int protocol; scalar_t__ len; } ;


 int hdlc_type_trans (struct sk_buff*,int ) ;
 int netif_rx (struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void sealevel_input(struct z8530_channel *c, struct sk_buff *skb)
{

 skb_trim(skb, skb->len - 2);
 skb->protocol = hdlc_type_trans(skb, c->netdevice);
 skb_reset_mac_header(skb);
 skb->dev = c->netdevice;
 netif_rx(skb);
}
