
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_5__ {int xdp_prog; } ;
struct TYPE_6__ {TYPE_2__ params; } ;
struct mlx5e_priv {int state; TYPE_1__* profile; TYPE_3__ channels; } ;
struct TYPE_4__ {int (* update_carrier ) (struct mlx5e_priv*) ;int (* update_rx ) (struct mlx5e_priv*) ;} ;


 int MLX5E_STATE_OPENED ;
 int clear_bit (int ,int *) ;
 int mlx5e_activate_priv_channels (struct mlx5e_priv*) ;
 int mlx5e_open_channels (struct mlx5e_priv*,TYPE_3__*) ;
 int mlx5e_queue_update_stats (struct mlx5e_priv*) ;
 int mlx5e_xdp_set_closed (struct mlx5e_priv*) ;
 int mlx5e_xdp_set_open (struct mlx5e_priv*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct mlx5e_priv*) ;
 int stub2 (struct mlx5e_priv*) ;

int mlx5e_open_locked(struct net_device *netdev)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 bool is_xdp = priv->channels.params.xdp_prog;
 int err;

 set_bit(MLX5E_STATE_OPENED, &priv->state);
 if (is_xdp)
  mlx5e_xdp_set_open(priv);

 err = mlx5e_open_channels(priv, &priv->channels);
 if (err)
  goto err_clear_state_opened_flag;

 priv->profile->update_rx(priv);
 mlx5e_activate_priv_channels(priv);
 if (priv->profile->update_carrier)
  priv->profile->update_carrier(priv);

 mlx5e_queue_update_stats(priv);
 return 0;

err_clear_state_opened_flag:
 if (is_xdp)
  mlx5e_xdp_set_closed(priv);
 clear_bit(MLX5E_STATE_OPENED, &priv->state);
 return err;
}
