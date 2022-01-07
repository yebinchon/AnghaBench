
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bonding {int dummy; } ;
typedef int ssize_t ;


 struct net_device* bond_option_active_slave_get_rcu (struct bonding*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sprintf (char*,char*,char*) ;
 struct bonding* to_bond (struct device*) ;

__attribute__((used)) static ssize_t bonding_show_active_slave(struct device *d,
      struct device_attribute *attr,
      char *buf)
{
 struct bonding *bond = to_bond(d);
 struct net_device *slave_dev;
 int count = 0;

 rcu_read_lock();
 slave_dev = bond_option_active_slave_get_rcu(bond);
 if (slave_dev)
  count = sprintf(buf, "%s\n", slave_dev->name);
 rcu_read_unlock();

 return count;
}
