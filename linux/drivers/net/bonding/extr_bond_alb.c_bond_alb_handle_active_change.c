
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct sockaddr_storage {int ss_family; int * __data; } ;
struct sockaddr {int dummy; } ;
struct slave {TYPE_3__* dev; } ;
struct TYPE_5__ {scalar_t__ rlb_promisc_timeout_counter; scalar_t__ primary_is_promisc; } ;
struct bonding {TYPE_2__* dev; int curr_active_slave; TYPE_1__ alb_info; } ;
struct TYPE_7__ {int addr_len; int * dev_addr; } ;
struct TYPE_6__ {int * dev_addr; int addr_len; int type; } ;


 scalar_t__ BOND_MODE (struct bonding*) ;
 scalar_t__ BOND_MODE_TLB ;
 int MAX_ADDR_LEN ;
 int alb_fasten_mac_swap (struct bonding*,struct slave*,struct slave*) ;
 int alb_send_learning_packets (struct slave*,int *,int) ;
 int alb_set_slave_mac_addr (struct slave*,int *,int ) ;
 int alb_swap_mac_addr (struct slave*,struct slave*) ;
 int bond_has_slaves (struct bonding*) ;
 int bond_hw_addr_copy (int *,int *,int ) ;
 struct slave* bond_slave_has_mac (struct bonding*,int *) ;
 int dev_set_mac_address (TYPE_3__*,struct sockaddr*,int *) ;
 int dev_set_promiscuity (TYPE_3__*,int) ;
 int rcu_assign_pointer (int ,struct slave*) ;
 struct slave* rtnl_dereference (int ) ;
 int tlb_clear_slave (struct bonding*,struct slave*,int) ;

void bond_alb_handle_active_change(struct bonding *bond, struct slave *new_slave)
{
 struct slave *swap_slave;
 struct slave *curr_active;

 curr_active = rtnl_dereference(bond->curr_active_slave);
 if (curr_active == new_slave)
  return;

 if (curr_active && bond->alb_info.primary_is_promisc) {
  dev_set_promiscuity(curr_active->dev, -1);
  bond->alb_info.primary_is_promisc = 0;
  bond->alb_info.rlb_promisc_timeout_counter = 0;
 }

 swap_slave = curr_active;
 rcu_assign_pointer(bond->curr_active_slave, new_slave);

 if (!new_slave || !bond_has_slaves(bond))
  return;




 if (!swap_slave)
  swap_slave = bond_slave_has_mac(bond, bond->dev->dev_addr);





 if (swap_slave)
  tlb_clear_slave(bond, swap_slave, 1);
 tlb_clear_slave(bond, new_slave, 1);




 if (BOND_MODE(bond) == BOND_MODE_TLB) {
  struct sockaddr_storage ss;
  u8 tmp_addr[MAX_ADDR_LEN];

  bond_hw_addr_copy(tmp_addr, new_slave->dev->dev_addr,
      new_slave->dev->addr_len);

  bond_hw_addr_copy(ss.__data, bond->dev->dev_addr,
      bond->dev->addr_len);
  ss.ss_family = bond->dev->type;

  dev_set_mac_address(new_slave->dev, (struct sockaddr *)&ss,
        ((void*)0));

  bond_hw_addr_copy(new_slave->dev->dev_addr, tmp_addr,
      new_slave->dev->addr_len);
 }


 if (swap_slave) {

  alb_swap_mac_addr(swap_slave, new_slave);
  alb_fasten_mac_swap(bond, swap_slave, new_slave);
 } else {

  alb_set_slave_mac_addr(new_slave, bond->dev->dev_addr,
           bond->dev->addr_len);
  alb_send_learning_packets(new_slave, bond->dev->dev_addr,
       0);
 }
}
