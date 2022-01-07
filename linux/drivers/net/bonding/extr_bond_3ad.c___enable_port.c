
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {scalar_t__ link; } ;
struct port {struct slave* slave; } ;


 scalar_t__ BOND_LINK_UP ;
 int BOND_SLAVE_NOTIFY_LATER ;
 int bond_set_slave_active_flags (struct slave*,int ) ;
 scalar_t__ bond_slave_is_up (struct slave*) ;

__attribute__((used)) static inline void __enable_port(struct port *port)
{
 struct slave *slave = port->slave;

 if ((slave->link == BOND_LINK_UP) && bond_slave_is_up(slave))
  bond_set_slave_active_flags(slave, BOND_SLAVE_NOTIFY_LATER);
}
