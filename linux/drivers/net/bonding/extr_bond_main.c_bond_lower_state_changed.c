
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {scalar_t__ link; int dev; } ;
struct netdev_lag_lower_state_info {int link_up; int tx_enabled; } ;


 scalar_t__ BOND_LINK_FAIL ;
 scalar_t__ BOND_LINK_UP ;
 int bond_is_active_slave (struct slave*) ;
 int netdev_lower_state_changed (int ,struct netdev_lag_lower_state_info*) ;

void bond_lower_state_changed(struct slave *slave)
{
 struct netdev_lag_lower_state_info info;

 info.link_up = slave->link == BOND_LINK_UP ||
         slave->link == BOND_LINK_FAIL;
 info.tx_enabled = bond_is_active_slave(slave);
 netdev_lower_state_changed(slave->dev, &info);
}
