
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slave {TYPE_1__* dev; int perm_hwaddr; } ;
struct TYPE_4__ {int rlb_rebalance; scalar_t__ rlb_enabled; int tx_rebalance_counter; } ;
struct bonding {TYPE_2__ alb_info; } ;
struct TYPE_3__ {int addr_len; } ;


 int BOND_TLB_REBALANCE_TICKS ;
 int alb_handle_addr_collision_on_attach (struct bonding*,struct slave*) ;
 int alb_set_slave_mac_addr (struct slave*,int ,int ) ;
 int tlb_init_slave (struct slave*) ;

int bond_alb_init_slave(struct bonding *bond, struct slave *slave)
{
 int res;

 res = alb_set_slave_mac_addr(slave, slave->perm_hwaddr,
         slave->dev->addr_len);
 if (res)
  return res;

 res = alb_handle_addr_collision_on_attach(bond, slave);
 if (res)
  return res;

 tlb_init_slave(slave);


 bond->alb_info.tx_rebalance_counter = BOND_TLB_REBALANCE_TICKS;

 if (bond->alb_info.rlb_enabled)
  bond->alb_info.rlb_rebalance = 1;

 return 0;
}
