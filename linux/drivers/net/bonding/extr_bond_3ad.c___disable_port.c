
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int slave; } ;


 int BOND_SLAVE_NOTIFY_LATER ;
 int bond_set_slave_inactive_flags (int ,int ) ;

__attribute__((used)) static inline void __disable_port(struct port *port)
{
 bond_set_slave_inactive_flags(port->slave, BOND_SLAVE_NOTIFY_LATER);
}
