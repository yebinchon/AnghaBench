
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct netdevsim {int syncp; int tx_bytes; int tx_packets; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct netdevsim* netdev_priv (struct net_device*) ;
 int nsim_ipsec_tx (struct netdevsim*,struct sk_buff*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static netdev_tx_t nsim_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct netdevsim *ns = netdev_priv(dev);

 if (!nsim_ipsec_tx(ns, skb))
  goto out;

 u64_stats_update_begin(&ns->syncp);
 ns->tx_packets++;
 ns->tx_bytes += skb->len;
 u64_stats_update_end(&ns->syncp);

out:
 dev_kfree_skb(skb);

 return NETDEV_TX_OK;
}
