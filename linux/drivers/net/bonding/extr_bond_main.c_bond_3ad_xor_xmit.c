
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {int dev; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bonding {int slave_arr; } ;
struct bond_up_slave {struct slave** arr; int count; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 unsigned int READ_ONCE (int ) ;
 int bond_dev_queue_xmit (struct bonding*,struct sk_buff*,int ) ;
 int bond_tx_drop (struct net_device*,struct sk_buff*) ;
 unsigned int bond_xmit_hash (struct bonding*,struct sk_buff*) ;
 scalar_t__ likely (unsigned int) ;
 struct bonding* netdev_priv (struct net_device*) ;
 struct bond_up_slave* rcu_dereference (int ) ;

__attribute__((used)) static netdev_tx_t bond_3ad_xor_xmit(struct sk_buff *skb,
         struct net_device *dev)
{
 struct bonding *bond = netdev_priv(dev);
 struct slave *slave;
 struct bond_up_slave *slaves;
 unsigned int count;

 slaves = rcu_dereference(bond->slave_arr);
 count = slaves ? READ_ONCE(slaves->count) : 0;
 if (likely(count)) {
  slave = slaves->arr[bond_xmit_hash(bond, skb) % count];
  bond_dev_queue_xmit(bond, skb, slave->dev);
 } else {
  bond_tx_drop(dev, skb);
 }

 return NETDEV_TX_OK;
}
