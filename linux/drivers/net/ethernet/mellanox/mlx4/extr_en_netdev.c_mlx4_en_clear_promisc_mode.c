
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mlx4_en_priv {int flags; int base_qpn; int port; } ;
struct mlx4_en_dev {TYPE_2__* dev; } ;
struct TYPE_6__ {int steering_mode; } ;
struct TYPE_7__ {TYPE_1__ caps; } ;


 int MLX4_EN_FLAG_MC_PROMISC ;
 int MLX4_EN_FLAG_PROMISC ;
 int MLX4_FS_ALL_DEFAULT ;



 int en_err (struct mlx4_en_priv*,char*) ;
 int en_warn (struct mlx4_en_priv*,char*) ;
 int mlx4_SET_PORT_qpn_calc (TYPE_2__*,int ,int ,int ) ;
 int mlx4_flow_steer_promisc_remove (TYPE_2__*,int ,int ) ;
 int mlx4_multicast_promisc_remove (TYPE_2__*,int ,int ) ;
 int mlx4_unicast_promisc_remove (TYPE_2__*,int ,int ) ;
 scalar_t__ netif_msg_rx_status (struct mlx4_en_priv*) ;

__attribute__((used)) static void mlx4_en_clear_promisc_mode(struct mlx4_en_priv *priv,
           struct mlx4_en_dev *mdev)
{
 int err = 0;

 if (netif_msg_rx_status(priv))
  en_warn(priv, "Leaving promiscuous mode\n");
 priv->flags &= ~MLX4_EN_FLAG_PROMISC;


 switch (mdev->dev->caps.steering_mode) {
 case 128:
  err = mlx4_flow_steer_promisc_remove(mdev->dev,
           priv->port,
           MLX4_FS_ALL_DEFAULT);
  if (err)
   en_err(priv, "Failed disabling promiscuous mode\n");
  priv->flags &= ~MLX4_EN_FLAG_MC_PROMISC;
  break;

 case 129:
  err = mlx4_unicast_promisc_remove(mdev->dev,
        priv->base_qpn,
        priv->port);
  if (err)
   en_err(priv, "Failed disabling unicast promiscuous mode\n");

  if (priv->flags & MLX4_EN_FLAG_MC_PROMISC) {
   err = mlx4_multicast_promisc_remove(mdev->dev,
           priv->base_qpn,
           priv->port);
   if (err)
    en_err(priv, "Failed disabling multicast promiscuous mode\n");
   priv->flags &= ~MLX4_EN_FLAG_MC_PROMISC;
  }
  break;

 case 130:
  err = mlx4_SET_PORT_qpn_calc(mdev->dev,
          priv->port,
          priv->base_qpn, 0);
  if (err)
   en_err(priv, "Failed disabling promiscuous mode\n");
  break;
 }
}
