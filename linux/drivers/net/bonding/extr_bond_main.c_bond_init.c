
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ addr_assign_type; int dev_addr; int name; } ;
struct bonding {int bond_list; int stats_lock_key; int stats_lock; int wq; } ;
struct bond_net {int dev_list; } ;


 int ENOMEM ;
 scalar_t__ NET_ADDR_PERM ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (int ,int ) ;
 int bond_debug_register (struct bonding*) ;
 int bond_net_id ;
 int bond_prepare_sysfs_group (struct bonding*) ;
 int dev_net (struct net_device*) ;
 int eth_hw_addr_random (struct net_device*) ;
 scalar_t__ is_zero_ether_addr (int ) ;
 int list_add_tail (int *,int *) ;
 int lockdep_register_key (int *) ;
 int lockdep_set_class (int *,int *) ;
 struct bond_net* net_generic (int ,int ) ;
 int netdev_dbg (struct net_device*,char*) ;
 struct bonding* netdev_priv (struct net_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int bond_init(struct net_device *bond_dev)
{
 struct bonding *bond = netdev_priv(bond_dev);
 struct bond_net *bn = net_generic(dev_net(bond_dev), bond_net_id);

 netdev_dbg(bond_dev, "Begin bond_init\n");

 bond->wq = alloc_ordered_workqueue(bond_dev->name, WQ_MEM_RECLAIM);
 if (!bond->wq)
  return -ENOMEM;

 spin_lock_init(&bond->stats_lock);
 lockdep_register_key(&bond->stats_lock_key);
 lockdep_set_class(&bond->stats_lock, &bond->stats_lock_key);

 list_add_tail(&bond->bond_list, &bn->dev_list);

 bond_prepare_sysfs_group(bond);

 bond_debug_register(bond);


 if (is_zero_ether_addr(bond_dev->dev_addr) &&
     bond_dev->addr_assign_type == NET_ADDR_PERM)
  eth_hw_addr_random(bond_dev);

 return 0;
}
