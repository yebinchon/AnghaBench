
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipvl_port {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static inline int ipvlan_l3s_register(struct ipvl_port *port)
{
 return -ENOTSUPP;
}
