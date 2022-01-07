
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_tunnel_info {scalar_t__ type; int port; } ;
struct nfp_net {int * vxlan_usecnt; } ;
struct net_device {int dummy; } ;


 int ENOSPC ;
 scalar_t__ UDP_TUNNEL_TYPE_VXLAN ;
 struct nfp_net* netdev_priv (struct net_device*) ;
 int nfp_net_find_vxlan_idx (struct nfp_net*,int ) ;
 int nfp_net_set_vxlan_port (struct nfp_net*,int,int ) ;

__attribute__((used)) static void nfp_net_del_vxlan_port(struct net_device *netdev,
       struct udp_tunnel_info *ti)
{
 struct nfp_net *nn = netdev_priv(netdev);
 int idx;

 if (ti->type != UDP_TUNNEL_TYPE_VXLAN)
  return;

 idx = nfp_net_find_vxlan_idx(nn, ti->port);
 if (idx == -ENOSPC || !nn->vxlan_usecnt[idx])
  return;

 if (!--nn->vxlan_usecnt[idx])
  nfp_net_set_vxlan_port(nn, idx, 0);
}
