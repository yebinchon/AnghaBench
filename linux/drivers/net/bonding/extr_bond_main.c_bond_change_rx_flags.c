
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct bonding {int dummy; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int bond_set_allmulti (struct bonding*,int) ;
 int bond_set_promiscuity (struct bonding*,int) ;
 struct bonding* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bond_change_rx_flags(struct net_device *bond_dev, int change)
{
 struct bonding *bond = netdev_priv(bond_dev);

 if (change & IFF_PROMISC)
  bond_set_promiscuity(bond,
         bond_dev->flags & IFF_PROMISC ? 1 : -1);

 if (change & IFF_ALLMULTI)
  bond_set_allmulti(bond,
      bond_dev->flags & IFF_ALLMULTI ? 1 : -1);
}
