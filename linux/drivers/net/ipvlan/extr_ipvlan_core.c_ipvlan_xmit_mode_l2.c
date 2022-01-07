
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct net_device {int dummy; } ;
struct ipvl_dev {int phy_dev; int port; } ;
struct ipvl_addr {int dummy; } ;
struct ethhdr {int h_dest; int h_source; } ;


 int GFP_ATOMIC ;
 int NET_XMIT_DROP ;
 int NET_XMIT_SUCCESS ;
 int consume_skb (struct sk_buff*) ;
 int dev_forward_skb (int ,struct sk_buff*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 struct ipvl_addr* ipvlan_addr_lookup (int ,void*,int,int) ;
 void* ipvlan_get_L3_hdr (int ,struct sk_buff*,int*) ;
 scalar_t__ ipvlan_is_private (int ) ;
 int ipvlan_is_vepa (int ) ;
 int ipvlan_multicast_enqueue (int ,struct sk_buff*,int) ;
 int ipvlan_rcv_frame (struct ipvl_addr*,struct sk_buff**,int) ;
 int ipvlan_skb_crossing_ns (struct sk_buff*,int *) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 struct ipvl_dev* netdev_priv (struct net_device*) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;

__attribute__((used)) static int ipvlan_xmit_mode_l2(struct sk_buff *skb, struct net_device *dev)
{
 const struct ipvl_dev *ipvlan = netdev_priv(dev);
 struct ethhdr *eth = eth_hdr(skb);
 struct ipvl_addr *addr;
 void *lyr3h;
 int addr_type;

 if (!ipvlan_is_vepa(ipvlan->port) &&
     ether_addr_equal(eth->h_dest, eth->h_source)) {
  lyr3h = ipvlan_get_L3_hdr(ipvlan->port, skb, &addr_type);
  if (lyr3h) {
   addr = ipvlan_addr_lookup(ipvlan->port, lyr3h, addr_type, 1);
   if (addr) {
    if (ipvlan_is_private(ipvlan->port)) {
     consume_skb(skb);
     return NET_XMIT_DROP;
    }
    return ipvlan_rcv_frame(addr, &skb, 1);
   }
  }
  skb = skb_share_check(skb, GFP_ATOMIC);
  if (!skb)
   return NET_XMIT_DROP;






  return dev_forward_skb(ipvlan->phy_dev, skb);

 } else if (is_multicast_ether_addr(eth->h_dest)) {
  ipvlan_skb_crossing_ns(skb, ((void*)0));
  ipvlan_multicast_enqueue(ipvlan->port, skb, 1);
  return NET_XMIT_SUCCESS;
 }

 skb->dev = ipvlan->phy_dev;
 return dev_queue_xmit(skb);
}
