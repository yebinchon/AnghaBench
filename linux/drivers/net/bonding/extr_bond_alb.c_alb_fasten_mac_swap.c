
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slave {TYPE_2__* dev; } ;
struct TYPE_3__ {scalar_t__ rlb_enabled; } ;
struct bonding {TYPE_1__ alb_info; } ;
struct TYPE_4__ {int dev_addr; } ;


 int ASSERT_RTNL () ;
 int alb_send_learning_packets (struct slave*,int ,int) ;
 scalar_t__ bond_slave_can_tx (struct slave*) ;
 int rlb_req_update_slave_clients (struct bonding*,struct slave*) ;
 int rlb_teach_disabled_mac_on_primary (struct bonding*,int ) ;

__attribute__((used)) static void alb_fasten_mac_swap(struct bonding *bond, struct slave *slave1,
    struct slave *slave2)
{
 int slaves_state_differ = (bond_slave_can_tx(slave1) != bond_slave_can_tx(slave2));
 struct slave *disabled_slave = ((void*)0);

 ASSERT_RTNL();


 if (bond_slave_can_tx(slave1)) {
  alb_send_learning_packets(slave1, slave1->dev->dev_addr, 0);
  if (bond->alb_info.rlb_enabled) {



   rlb_req_update_slave_clients(bond, slave1);
  }
 } else {
  disabled_slave = slave1;
 }

 if (bond_slave_can_tx(slave2)) {
  alb_send_learning_packets(slave2, slave2->dev->dev_addr, 0);
  if (bond->alb_info.rlb_enabled) {



   rlb_req_update_slave_clients(bond, slave2);
  }
 } else {
  disabled_slave = slave2;
 }

 if (bond->alb_info.rlb_enabled && slaves_state_differ) {

  rlb_teach_disabled_mac_on_primary(bond,
        disabled_slave->dev->dev_addr);
 }
}
