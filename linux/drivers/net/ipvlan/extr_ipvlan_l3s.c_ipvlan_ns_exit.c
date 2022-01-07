
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ipvlan_netns {scalar_t__ ipvl_nf_hook_refcnt; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ WARN_ON_ONCE (scalar_t__) ;
 int ipvl_nfops ;
 int ipvlan_netid ;
 struct ipvlan_netns* net_generic (struct net*,int ) ;
 int nf_unregister_net_hooks (struct net*,int ,int ) ;

__attribute__((used)) static void ipvlan_ns_exit(struct net *net)
{
 struct ipvlan_netns *vnet = net_generic(net, ipvlan_netid);

 if (WARN_ON_ONCE(vnet->ipvl_nf_hook_refcnt)) {
  vnet->ipvl_nf_hook_refcnt = 0;
  nf_unregister_net_hooks(net, ipvl_nfops,
     ARRAY_SIZE(ipvl_nfops));
 }
}
