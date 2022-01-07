
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_tc_tunnel {int dummy; } ;


 struct mlx5e_tc_tunnel geneve_tunnel ;
 struct mlx5e_tc_tunnel gre_tunnel ;
 scalar_t__ netif_is_geneve (struct net_device*) ;
 scalar_t__ netif_is_gretap (struct net_device*) ;
 scalar_t__ netif_is_ip6gretap (struct net_device*) ;
 scalar_t__ netif_is_vxlan (struct net_device*) ;
 struct mlx5e_tc_tunnel vxlan_tunnel ;

struct mlx5e_tc_tunnel *mlx5e_get_tc_tun(struct net_device *tunnel_dev)
{
 if (netif_is_vxlan(tunnel_dev))
  return &vxlan_tunnel;
 else if (netif_is_geneve(tunnel_dev))
  return &geneve_tunnel;
 else if (netif_is_gretap(tunnel_dev) ||
   netif_is_ip6gretap(tunnel_dev))
  return &gre_tunnel;
 else
  return ((void*)0);
}
