
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ipvl_port {int mode; } ;
struct ipvl_dev {int phy_dev; } ;
struct ethhdr {int dummy; } ;





 int NET_XMIT_DROP ;
 int WARN_ONCE (int,char*,int) ;
 struct ipvl_port* ipvlan_port_get_rcu_bh (int ) ;
 int ipvlan_xmit_mode_l2 (struct sk_buff*,struct net_device*) ;
 int ipvlan_xmit_mode_l3 (struct sk_buff*,struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 struct ipvl_dev* netdev_priv (struct net_device*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

int ipvlan_queue_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct ipvl_dev *ipvlan = netdev_priv(dev);
 struct ipvl_port *port = ipvlan_port_get_rcu_bh(ipvlan->phy_dev);

 if (!port)
  goto out;

 if (unlikely(!pskb_may_pull(skb, sizeof(struct ethhdr))))
  goto out;

 switch(port->mode) {
 case 130:
  return ipvlan_xmit_mode_l2(skb, dev);
 case 129:



  return ipvlan_xmit_mode_l3(skb, dev);
 }


 WARN_ONCE(1, "ipvlan_queue_xmit() called for mode = [%hx]\n",
     port->mode);
out:
 kfree_skb(skb);
 return NET_XMIT_DROP;
}
