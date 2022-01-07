
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum nfp_flower_tun_type { ____Placeholder_nfp_flower_tun_type } nfp_flower_tun_type ;


 int NFP_FL_TUNNEL_GENEVE ;
 int NFP_FL_TUNNEL_GRE ;
 int NFP_FL_TUNNEL_VXLAN ;
 scalar_t__ netif_is_geneve (struct net_device*) ;
 scalar_t__ netif_is_gretap (struct net_device*) ;
 scalar_t__ netif_is_vxlan (struct net_device*) ;

__attribute__((used)) static inline bool
nfp_fl_netdev_is_tunnel_type(struct net_device *netdev,
        enum nfp_flower_tun_type tun_type)
{
 if (netif_is_vxlan(netdev))
  return tun_type == NFP_FL_TUNNEL_VXLAN;
 if (netif_is_gretap(netdev))
  return tun_type == NFP_FL_TUNNEL_GRE;
 if (netif_is_geneve(netdev))
  return tun_type == NFP_FL_TUNNEL_GENEVE;

 return 0;
}
