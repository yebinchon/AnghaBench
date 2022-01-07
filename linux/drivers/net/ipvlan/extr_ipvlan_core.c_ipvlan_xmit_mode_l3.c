
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ipvl_dev {int phy_dev; int port; } ;
struct ipvl_addr {int dummy; } ;


 int NET_XMIT_DROP ;
 int consume_skb (struct sk_buff*) ;
 struct ipvl_addr* ipvlan_addr_lookup (int ,void*,int,int) ;
 void* ipvlan_get_L3_hdr (int ,struct sk_buff*,int*) ;
 scalar_t__ ipvlan_is_private (int ) ;
 int ipvlan_is_vepa (int ) ;
 int ipvlan_process_outbound (struct sk_buff*) ;
 int ipvlan_rcv_frame (struct ipvl_addr*,struct sk_buff**,int) ;
 int ipvlan_skb_crossing_ns (struct sk_buff*,int ) ;
 struct ipvl_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ipvlan_xmit_mode_l3(struct sk_buff *skb, struct net_device *dev)
{
 const struct ipvl_dev *ipvlan = netdev_priv(dev);
 void *lyr3h;
 struct ipvl_addr *addr;
 int addr_type;

 lyr3h = ipvlan_get_L3_hdr(ipvlan->port, skb, &addr_type);
 if (!lyr3h)
  goto out;

 if (!ipvlan_is_vepa(ipvlan->port)) {
  addr = ipvlan_addr_lookup(ipvlan->port, lyr3h, addr_type, 1);
  if (addr) {
   if (ipvlan_is_private(ipvlan->port)) {
    consume_skb(skb);
    return NET_XMIT_DROP;
   }
   return ipvlan_rcv_frame(addr, &skb, 1);
  }
 }
out:
 ipvlan_skb_crossing_ns(skb, ipvlan->phy_dev);
 return ipvlan_process_outbound(skb);
}
