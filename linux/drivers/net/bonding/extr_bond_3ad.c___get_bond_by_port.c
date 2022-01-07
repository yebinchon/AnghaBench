
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int * slave; } ;
struct bonding {int dummy; } ;


 struct bonding* bond_get_bond_by_slave (int *) ;

__attribute__((used)) static inline struct bonding *__get_bond_by_port(struct port *port)
{
 if (port->slave == ((void*)0))
  return ((void*)0);

 return bond_get_bond_by_slave(port->slave);
}
