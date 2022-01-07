
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slave_attribute {int attr; } ;
struct slave {int kobj; TYPE_2__* dev; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int kobject_init_and_add (int *,int *,int *,char*) ;
 int kobject_put (int *) ;
 struct slave_attribute** slave_attrs ;
 int slave_ktype ;
 int sysfs_create_file (int *,int *) ;

int bond_sysfs_slave_add(struct slave *slave)
{
 const struct slave_attribute **a;
 int err;

 err = kobject_init_and_add(&slave->kobj, &slave_ktype,
       &(slave->dev->dev.kobj), "bonding_slave");
 if (err)
  return err;

 for (a = slave_attrs; *a; ++a) {
  err = sysfs_create_file(&slave->kobj, &((*a)->attr));
  if (err) {
   kobject_put(&slave->kobj);
   return err;
  }
 }

 return 0;
}
