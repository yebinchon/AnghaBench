
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slave {int perm_hwaddr; TYPE_1__* dev; } ;
struct bonding {TYPE_2__* dev; } ;
struct TYPE_4__ {int dev_addr; } ;
struct TYPE_3__ {int dev_addr; } ;


 int alb_fasten_mac_swap (struct bonding*,struct slave*,struct slave*) ;
 int alb_swap_mac_addr (struct slave*,struct slave*) ;
 struct slave* bond_slave_has_mac (struct bonding*,int ) ;
 int ether_addr_equal_64bits (int ,int ) ;

__attribute__((used)) static void alb_change_hw_addr_on_detach(struct bonding *bond, struct slave *slave)
{
 int perm_curr_diff;
 int perm_bond_diff;
 struct slave *found_slave;

 perm_curr_diff = !ether_addr_equal_64bits(slave->perm_hwaddr,
        slave->dev->dev_addr);
 perm_bond_diff = !ether_addr_equal_64bits(slave->perm_hwaddr,
        bond->dev->dev_addr);

 if (perm_curr_diff && perm_bond_diff) {
  found_slave = bond_slave_has_mac(bond, slave->perm_hwaddr);

  if (found_slave) {
   alb_swap_mac_addr(slave, found_slave);
   alb_fasten_mac_swap(bond, slave, found_slave);
  }
 }
}
