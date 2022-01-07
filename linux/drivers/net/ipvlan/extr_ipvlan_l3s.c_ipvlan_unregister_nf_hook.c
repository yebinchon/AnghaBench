
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ipvlan_netns {int ipvl_nf_hook_refcnt; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ WARN_ON (int) ;
 int ipvl_nfops ;
 int ipvlan_netid ;
 struct ipvlan_netns* net_generic (struct net*,int ) ;
 int nf_unregister_net_hooks (struct net*,int ,int ) ;

__attribute__((used)) static void ipvlan_unregister_nf_hook(struct net *net)
{
 struct ipvlan_netns *vnet = net_generic(net, ipvlan_netid);

 if (WARN_ON(!vnet->ipvl_nf_hook_refcnt))
  return;

 vnet->ipvl_nf_hook_refcnt--;
 if (!vnet->ipvl_nf_hook_refcnt)
  nf_unregister_net_hooks(net, ipvl_nfops,
     ARRAY_SIZE(ipvl_nfops));
}
