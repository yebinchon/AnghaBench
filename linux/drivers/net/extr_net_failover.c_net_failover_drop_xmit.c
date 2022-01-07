
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int tx_dropped; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int atomic_long_inc (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t net_failover_drop_xmit(struct sk_buff *skb,
       struct net_device *dev)
{
 atomic_long_inc(&dev->tx_dropped);
 dev_kfree_skb_any(skb);
 return NETDEV_TX_OK;
}
