
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int dev; } ;
struct stmmac_packet_attrs {int dst; int src; int ip_dst; int ip_src; } ;
struct sk_buff {int dev; int pkt_type; } ;
typedef int __be32 ;


 int ARPOP_REQUEST ;
 int ETH_P_ARP ;
 int PACKET_HOST ;
 struct sk_buff* arp_create (int ,int ,int ,int ,int ,int *,int ,int ) ;
 int htonl (int ) ;

__attribute__((used)) static struct sk_buff *stmmac_test_get_arp_skb(struct stmmac_priv *priv,
            struct stmmac_packet_attrs *attr)
{
 __be32 ip_src = htonl(attr->ip_src);
 __be32 ip_dst = htonl(attr->ip_dst);
 struct sk_buff *skb = ((void*)0);

 skb = arp_create(ARPOP_REQUEST, ETH_P_ARP, ip_dst, priv->dev, ip_src,
    ((void*)0), attr->src, attr->dst);
 if (!skb)
  return ((void*)0);

 skb->pkt_type = PACKET_HOST;
 skb->dev = priv->dev;

 return skb;
}
