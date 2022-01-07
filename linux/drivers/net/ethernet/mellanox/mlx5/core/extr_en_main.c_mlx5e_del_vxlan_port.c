
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udp_tunnel_info {scalar_t__ type; int port; } ;
struct net_device {int dummy; } ;
struct mlx5e_priv {TYPE_1__* mdev; } ;
struct TYPE_2__ {int vxlan; } ;


 scalar_t__ UDP_TUNNEL_TYPE_VXLAN ;
 int be16_to_cpu (int ) ;
 int mlx5_vxlan_allowed (int ) ;
 int mlx5e_vxlan_queue_work (struct mlx5e_priv*,int ,int ) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

void mlx5e_del_vxlan_port(struct net_device *netdev, struct udp_tunnel_info *ti)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);

 if (ti->type != UDP_TUNNEL_TYPE_VXLAN)
  return;

 if (!mlx5_vxlan_allowed(priv->mdev->vxlan))
  return;

 mlx5e_vxlan_queue_work(priv, be16_to_cpu(ti->port), 0);
}
