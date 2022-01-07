
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bonding {int dummy; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int __bond_start_xmit (struct sk_buff*,struct net_device*) ;
 scalar_t__ bond_has_slaves (struct bonding*) ;
 int bond_tx_drop (struct net_device*,struct sk_buff*) ;
 int is_netpoll_tx_blocked (struct net_device*) ;
 struct bonding* netdev_priv (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static netdev_tx_t bond_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct bonding *bond = netdev_priv(dev);
 netdev_tx_t ret = NETDEV_TX_OK;




 if (unlikely(is_netpoll_tx_blocked(dev)))
  return NETDEV_TX_BUSY;

 rcu_read_lock();
 if (bond_has_slaves(bond))
  ret = __bond_start_xmit(skb, dev);
 else
  bond_tx_drop(dev, skb);
 rcu_read_unlock();

 return ret;
}
