
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ipvlan_netns {int ipvl_nf_hook_refcnt; } ;


 int ASSERT_RTNL () ;
 int ipvlan_netid ;
 int ipvlan_register_nf_hook (struct net*) ;
 int ipvlan_unregister_nf_hook (struct net*) ;
 struct ipvlan_netns* net_generic (struct net*,int ) ;

void ipvlan_migrate_l3s_hook(struct net *oldnet, struct net *newnet)
{
 struct ipvlan_netns *old_vnet;

 ASSERT_RTNL();

 old_vnet = net_generic(oldnet, ipvlan_netid);
 if (!old_vnet->ipvl_nf_hook_refcnt)
  return;

 ipvlan_register_nf_hook(newnet);
 ipvlan_unregister_nf_hook(oldnet);
}
