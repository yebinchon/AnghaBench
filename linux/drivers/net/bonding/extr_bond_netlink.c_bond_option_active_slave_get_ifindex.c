
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ifindex; } ;
struct bonding {int dummy; } ;


 struct net_device* bond_option_active_slave_get_rcu (struct bonding*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int bond_option_active_slave_get_ifindex(struct bonding *bond)
{
 const struct net_device *slave;
 int ifindex;

 rcu_read_lock();
 slave = bond_option_active_slave_get_rcu(bond);
 ifindex = slave ? slave->ifindex : 0;
 rcu_read_unlock();
 return ifindex;
}
