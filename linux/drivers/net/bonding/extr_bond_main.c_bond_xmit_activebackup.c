
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {int dev; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bonding {int curr_active_slave; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int bond_dev_queue_xmit (struct bonding*,struct sk_buff*,int ) ;
 int bond_tx_drop (struct net_device*,struct sk_buff*) ;
 struct bonding* netdev_priv (struct net_device*) ;
 struct slave* rcu_dereference (int ) ;

__attribute__((used)) static netdev_tx_t bond_xmit_activebackup(struct sk_buff *skb,
       struct net_device *bond_dev)
{
 struct bonding *bond = netdev_priv(bond_dev);
 struct slave *slave;

 slave = rcu_dereference(bond->curr_active_slave);
 if (slave)
  bond_dev_queue_xmit(bond, skb, slave->dev);
 else
  bond_tx_drop(bond_dev, skb);

 return NETDEV_TX_OK;
}
