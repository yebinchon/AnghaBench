
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct udp_tunnel_info {scalar_t__ port; scalar_t__ type; scalar_t__ sa_family; } ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {scalar_t__ vxlan_port; int vxlan_add_task; TYPE_3__* mdev; } ;
typedef scalar_t__ __be16 ;
struct TYPE_6__ {int workqueue; TYPE_2__* dev; } ;
struct TYPE_4__ {scalar_t__ tunnel_offload_mode; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;


 scalar_t__ AF_INET ;
 scalar_t__ MLX4_TUNNEL_OFFLOAD_MODE_VXLAN ;
 scalar_t__ UDP_TUNNEL_TYPE_VXLAN ;
 int en_warn (struct mlx4_en_priv*,char*,int ,int ) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int ntohs (scalar_t__) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void mlx4_en_add_vxlan_port(struct net_device *dev,
       struct udp_tunnel_info *ti)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 __be16 port = ti->port;
 __be16 current_port;

 if (ti->type != UDP_TUNNEL_TYPE_VXLAN)
  return;

 if (ti->sa_family != AF_INET)
  return;

 if (priv->mdev->dev->caps.tunnel_offload_mode != MLX4_TUNNEL_OFFLOAD_MODE_VXLAN)
  return;

 current_port = priv->vxlan_port;
 if (current_port && current_port != port) {
  en_warn(priv, "vxlan port %d configured, can't add port %d\n",
   ntohs(current_port), ntohs(port));
  return;
 }

 priv->vxlan_port = port;
 queue_work(priv->mdev->workqueue, &priv->vxlan_add_task);
}
