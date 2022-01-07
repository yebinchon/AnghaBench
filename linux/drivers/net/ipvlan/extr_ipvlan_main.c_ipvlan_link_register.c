
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_ops {int maxtype; int changelink; int fill_info; int validate; int policy; int get_size; } ;


 int IFLA_IPVLAN_MAX ;
 int ipvlan_nl_changelink ;
 int ipvlan_nl_fillinfo ;
 int ipvlan_nl_getsize ;
 int ipvlan_nl_policy ;
 int ipvlan_nl_validate ;
 int rtnl_link_register (struct rtnl_link_ops*) ;

int ipvlan_link_register(struct rtnl_link_ops *ops)
{
 ops->get_size = ipvlan_nl_getsize;
 ops->policy = ipvlan_nl_policy;
 ops->validate = ipvlan_nl_validate;
 ops->fill_info = ipvlan_nl_fillinfo;
 ops->changelink = ipvlan_nl_changelink;
 ops->maxtype = IFLA_IPVLAN_MAX;
 return rtnl_link_register(ops);
}
