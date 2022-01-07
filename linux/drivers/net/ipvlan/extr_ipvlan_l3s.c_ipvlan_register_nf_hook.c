
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ipvlan_netns {int ipvl_nf_hook_refcnt; } ;


 int ARRAY_SIZE (int ) ;
 int ipvl_nfops ;
 int ipvlan_netid ;
 struct ipvlan_netns* net_generic (struct net*,int ) ;
 int nf_register_net_hooks (struct net*,int ,int ) ;

__attribute__((used)) static int ipvlan_register_nf_hook(struct net *net)
{
 struct ipvlan_netns *vnet = net_generic(net, ipvlan_netid);
 int err = 0;

 if (!vnet->ipvl_nf_hook_refcnt) {
  err = nf_register_net_hooks(net, ipvl_nfops,
         ARRAY_SIZE(ipvl_nfops));
  if (!err)
   vnet->ipvl_nf_hook_refcnt = 1;
 } else {
  vnet->ipvl_nf_hook_refcnt++;
 }

 return err;
}
