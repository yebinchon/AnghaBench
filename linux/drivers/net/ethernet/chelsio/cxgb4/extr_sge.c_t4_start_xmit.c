
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct port_info {int eth_flags; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int PRIV_FLAG_PORT_TX_VM ;
 int cxgb4_eth_xmit (struct sk_buff*,struct net_device*) ;
 int cxgb4_vf_eth_xmit (struct sk_buff*,struct net_device*) ;
 struct port_info* netdev_priv (struct net_device*) ;
 scalar_t__ unlikely (int) ;

netdev_tx_t t4_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct port_info *pi = netdev_priv(dev);

 if (unlikely(pi->eth_flags & PRIV_FLAG_PORT_TX_VM))
  return cxgb4_vf_eth_xmit(skb, dev);

 return cxgb4_eth_xmit(skb, dev);
}
