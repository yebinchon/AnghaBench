
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int pkt_type; struct net_device* dev; } ;
struct net_device {int broadcast; } ;
struct macvlan_dev {struct net_device* dev; } ;
struct ethhdr {int h_dest; } ;


 int PACKET_BROADCAST ;
 int PACKET_MULTICAST ;
 int __dev_forward_skb (struct net_device*,struct sk_buff*) ;
 scalar_t__ ether_addr_equal_64bits (int ,int ) ;

__attribute__((used)) static int macvlan_broadcast_one(struct sk_buff *skb,
     const struct macvlan_dev *vlan,
     const struct ethhdr *eth, bool local)
{
 struct net_device *dev = vlan->dev;

 if (local)
  return __dev_forward_skb(dev, skb);

 skb->dev = dev;
 if (ether_addr_equal_64bits(eth->h_dest, dev->broadcast))
  skb->pkt_type = PACKET_BROADCAST;
 else
  skb->pkt_type = PACKET_MULTICAST;

 return 0;
}
