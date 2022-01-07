
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ xdp_prog; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct mlx5e_priv {TYPE_2__ channels; int netdev; int state; } ;


 int MLX5E_STATE_OPENED ;
 int clear_bit (int ,int *) ;
 int mlx5e_close_channels (TYPE_2__*) ;
 int mlx5e_deactivate_priv_channels (struct mlx5e_priv*) ;
 int mlx5e_xdp_set_closed (struct mlx5e_priv*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (int ) ;
 int test_bit (int ,int *) ;

int mlx5e_close_locked(struct net_device *netdev)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);




 if (!test_bit(MLX5E_STATE_OPENED, &priv->state))
  return 0;

 if (priv->channels.params.xdp_prog)
  mlx5e_xdp_set_closed(priv);
 clear_bit(MLX5E_STATE_OPENED, &priv->state);

 netif_carrier_off(priv->netdev);
 mlx5e_deactivate_priv_channels(priv);
 mlx5e_close_channels(&priv->channels);

 return 0;
}
