
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int slave; } ;


 int bond_is_active_slave (int ) ;

__attribute__((used)) static inline int __port_is_enabled(struct port *port)
{
 return bond_is_active_slave(port->slave);
}
