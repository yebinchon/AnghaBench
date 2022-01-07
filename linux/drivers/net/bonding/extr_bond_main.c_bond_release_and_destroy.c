
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_flags; } ;
struct bonding {int dummy; } ;


 int IFF_DISABLE_NETPOLL ;
 int __bond_release_one (struct net_device*,struct net_device*,int,int) ;
 int bond_has_slaves (struct bonding*) ;
 int bond_remove_proc_entry (struct bonding*) ;
 int netdev_info (struct net_device*,char*) ;
 struct bonding* netdev_priv (struct net_device*) ;
 int unregister_netdevice (struct net_device*) ;

__attribute__((used)) static int bond_release_and_destroy(struct net_device *bond_dev,
        struct net_device *slave_dev)
{
 struct bonding *bond = netdev_priv(bond_dev);
 int ret;

 ret = __bond_release_one(bond_dev, slave_dev, 0, 1);
 if (ret == 0 && !bond_has_slaves(bond)) {
  bond_dev->priv_flags |= IFF_DISABLE_NETPOLL;
  netdev_info(bond_dev, "Destroying bond\n");
  bond_remove_proc_entry(bond);
  unregister_netdevice(bond_dev);
 }
 return ret;
}
