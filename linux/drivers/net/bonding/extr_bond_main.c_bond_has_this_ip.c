
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bonding {int dev; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ bond_confirm_addr (int ,int ,scalar_t__) ;
 int bond_upper_dev_walk ;
 scalar_t__ netdev_walk_all_upper_dev_rcu (int ,int ,scalar_t__*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static bool bond_has_this_ip(struct bonding *bond, __be32 ip)
{
 bool ret = 0;

 if (ip == bond_confirm_addr(bond->dev, 0, ip))
  return 1;

 rcu_read_lock();
 if (netdev_walk_all_upper_dev_rcu(bond->dev, bond_upper_dev_walk, &ip))
  ret = 1;
 rcu_read_unlock();

 return ret;
}
