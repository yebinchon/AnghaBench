
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave_attribute {int attr; } ;
struct slave {int kobj; } ;


 int kobject_put (int *) ;
 struct slave_attribute** slave_attrs ;
 int sysfs_remove_file (int *,int *) ;

void bond_sysfs_slave_del(struct slave *slave)
{
 const struct slave_attribute **a;

 for (a = slave_attrs; *a; ++a)
  sysfs_remove_file(&slave->kobj, &((*a)->attr));

 kobject_put(&slave->kobj);
}
