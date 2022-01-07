
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipvl_port {int flags; } ;


 int IPVLAN_F_VEPA ;

__attribute__((used)) static inline bool ipvlan_is_vepa(const struct ipvl_port *port)
{
 return !!(port->flags & IPVLAN_F_VEPA);
}
