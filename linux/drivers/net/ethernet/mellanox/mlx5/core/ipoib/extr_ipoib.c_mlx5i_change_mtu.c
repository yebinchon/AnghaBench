
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct mlx5e_params {int sw_mtu; } ;
struct TYPE_2__ {struct mlx5e_params params; } ;
struct mlx5e_priv {int state_lock; int state; TYPE_1__ channels; } ;
struct mlx5e_channels {struct mlx5e_params params; } ;


 int MLX5E_STATE_OPENED ;
 int mlx5e_safe_switch_channels (struct mlx5e_priv*,struct mlx5e_channels*,int *) ;
 struct mlx5e_priv* mlx5i_epriv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int mlx5i_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct mlx5e_priv *priv = mlx5i_epriv(netdev);
 struct mlx5e_channels new_channels = {};
 struct mlx5e_params *params;
 int err = 0;

 mutex_lock(&priv->state_lock);

 params = &priv->channels.params;

 if (!test_bit(MLX5E_STATE_OPENED, &priv->state)) {
  params->sw_mtu = new_mtu;
  netdev->mtu = params->sw_mtu;
  goto out;
 }

 new_channels.params = *params;
 new_channels.params.sw_mtu = new_mtu;

 err = mlx5e_safe_switch_channels(priv, &new_channels, ((void*)0));
 if (err)
  goto out;

 netdev->mtu = new_channels.params.sw_mtu;

out:
 mutex_unlock(&priv->state_lock);
 return err;
}
