
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {int notify_work; } ;
struct bonding {int dummy; } ;


 scalar_t__ BOND_MODE (struct bonding*) ;
 scalar_t__ BOND_MODE_8023AD ;
 struct slave* SLAVE_AD_INFO (struct slave*) ;
 struct bonding* bond_get_bond_by_slave (struct slave*) ;
 int cancel_delayed_work_sync (int *) ;
 int kfree (struct slave*) ;

__attribute__((used)) static void bond_free_slave(struct slave *slave)
{
 struct bonding *bond = bond_get_bond_by_slave(slave);

 cancel_delayed_work_sync(&slave->notify_work);
 if (BOND_MODE(bond) == BOND_MODE_8023AD)
  kfree(SLAVE_AD_INFO(slave));

 kfree(slave);
}
