
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bonding {scalar_t__ wq; } ;


 int destroy_workqueue (scalar_t__) ;
 struct bonding* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bond_destructor(struct net_device *bond_dev)
{
 struct bonding *bond = netdev_priv(bond_dev);
 if (bond->wq)
  destroy_workqueue(bond->wq);
}
