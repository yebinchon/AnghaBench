
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int protocol; int pkt_type; } ;
struct net_device {int dummy; } ;


 int PACKET_HOST ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int skb_reset_mac_len (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int skb_transport_header_was_set (struct sk_buff*) ;

__attribute__((used)) static void macsec_reset_skb(struct sk_buff *skb, struct net_device *dev)
{
 skb->pkt_type = PACKET_HOST;
 skb->protocol = eth_type_trans(skb, dev);

 skb_reset_network_header(skb);
 if (!skb_transport_header_was_set(skb))
  skb_reset_transport_header(skb);
 skb_reset_mac_len(skb);
}
