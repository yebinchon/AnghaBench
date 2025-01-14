
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int pkt_type; struct net_device* dev; } ;
struct net_device {int flags; int dev_addr; } ;
struct macvlan_dev {struct net_device* dev; } ;
struct TYPE_2__ {int h_dest; } ;


 int ETH_HLEN ;
 int GFP_ATOMIC ;
 int IFF_UP ;
 int NET_RX_SUCCESS ;
 int PACKET_HOST ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;
 scalar_t__ ether_addr_equal_64bits (int ,int ) ;
 int macvlan_count_rx (struct macvlan_dev*,int,int,int) ;
 int netif_rx (struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void macvlan_forward_source_one(struct sk_buff *skb,
           struct macvlan_dev *vlan)
{
 struct sk_buff *nskb;
 struct net_device *dev;
 int len;
 int ret;

 dev = vlan->dev;
 if (unlikely(!(dev->flags & IFF_UP)))
  return;

 nskb = skb_clone(skb, GFP_ATOMIC);
 if (!nskb)
  return;

 len = nskb->len + ETH_HLEN;
 nskb->dev = dev;

 if (ether_addr_equal_64bits(eth_hdr(skb)->h_dest, dev->dev_addr))
  nskb->pkt_type = PACKET_HOST;

 ret = netif_rx(nskb);
 macvlan_count_rx(vlan, len, ret == NET_RX_SUCCESS, 0);
}
