
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipvlan_net_ops ;
 int unregister_pernet_subsys (int *) ;

void ipvlan_l3s_cleanup(void)
{
 unregister_pernet_subsys(&ipvlan_net_ops);
}
