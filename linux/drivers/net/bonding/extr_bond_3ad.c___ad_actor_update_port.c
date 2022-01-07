
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct port {int actor_system_priority; int actor_system; int slave; } ;
struct bonding {int dummy; } ;
struct TYPE_3__ {int sys_priority; int sys_mac_addr; } ;
struct TYPE_4__ {TYPE_1__ system; } ;


 TYPE_2__ BOND_AD_INFO (struct bonding const*) ;
 struct bonding* bond_get_bond_by_slave (int ) ;

__attribute__((used)) static void __ad_actor_update_port(struct port *port)
{
 const struct bonding *bond = bond_get_bond_by_slave(port->slave);

 port->actor_system = BOND_AD_INFO(bond).system.sys_mac_addr;
 port->actor_system_priority = BOND_AD_INFO(bond).system.sys_priority;
}
