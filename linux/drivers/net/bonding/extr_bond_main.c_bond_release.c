
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __bond_release_one (struct net_device*,struct net_device*,int,int) ;

int bond_release(struct net_device *bond_dev, struct net_device *slave_dev)
{
 return __bond_release_one(bond_dev, slave_dev, 0, 0);
}
