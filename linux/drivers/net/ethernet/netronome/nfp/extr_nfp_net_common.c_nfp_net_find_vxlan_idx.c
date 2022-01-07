
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {scalar_t__* vxlan_ports; int * vxlan_usecnt; } ;
typedef scalar_t__ __be16 ;


 int ENOSPC ;
 int NFP_NET_N_VXLAN_PORTS ;

__attribute__((used)) static int nfp_net_find_vxlan_idx(struct nfp_net *nn, __be16 port)
{
 int i, free_idx = -ENOSPC;

 for (i = 0; i < NFP_NET_N_VXLAN_PORTS; i++) {
  if (nn->vxlan_ports[i] == port)
   return i;
  if (!nn->vxlan_usecnt[i])
   free_idx = i;
 }

 return free_idx;
}
