
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macvlan_port {int flags; } ;


 int MACVLAN_F_ADDRCHANGE ;

__attribute__((used)) static inline void macvlan_set_addr_change(struct macvlan_port *port)
{
 port->flags |= MACVLAN_F_ADDRCHANGE;
}
