
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int pkt_type; struct net_device* dev; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 int ETH_P_CUST ;
 int PACKET_HOST ;
 int htons (int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static __be16 farsync_type_trans(struct sk_buff *skb, struct net_device *dev)
{
 skb->dev = dev;
 skb_reset_mac_header(skb);
 skb->pkt_type = PACKET_HOST;
 return htons(ETH_P_CUST);
}
