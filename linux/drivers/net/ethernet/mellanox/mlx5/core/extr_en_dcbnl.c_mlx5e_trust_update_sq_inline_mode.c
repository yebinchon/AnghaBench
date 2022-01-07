
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tx_min_inline_mode; } ;
struct TYPE_3__ {TYPE_2__ params; } ;
struct mlx5e_priv {int state_lock; TYPE_1__ channels; int state; } ;
struct mlx5e_channels {TYPE_2__ params; } ;


 int MLX5E_STATE_OPENED ;
 int mlx5e_safe_switch_channels (struct mlx5e_priv*,struct mlx5e_channels*,int *) ;
 int mlx5e_trust_update_tx_min_inline_mode (struct mlx5e_priv*,TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void mlx5e_trust_update_sq_inline_mode(struct mlx5e_priv *priv)
{
 struct mlx5e_channels new_channels = {};

 mutex_lock(&priv->state_lock);

 new_channels.params = priv->channels.params;
 mlx5e_trust_update_tx_min_inline_mode(priv, &new_channels.params);

 if (!test_bit(MLX5E_STATE_OPENED, &priv->state)) {
  priv->channels.params = new_channels.params;
  goto out;
 }


 if (new_channels.params.tx_min_inline_mode ==
     priv->channels.params.tx_min_inline_mode)
  goto out;

 mlx5e_safe_switch_channels(priv, &new_channels, ((void*)0));

out:
 mutex_unlock(&priv->state_lock);
}
