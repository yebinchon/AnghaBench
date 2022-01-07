
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int state_lock; int state; } ;


 int MLX5E_STATE_OPENED ;
 int mlx5e_safe_reopen_channels (struct mlx5e_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int test_bit (int ,int *) ;

int mlx5e_health_recover_channels(struct mlx5e_priv *priv)
{
 int err = 0;

 rtnl_lock();
 mutex_lock(&priv->state_lock);

 if (!test_bit(MLX5E_STATE_OPENED, &priv->state))
  goto out;

 err = mlx5e_safe_reopen_channels(priv);

out:
 mutex_unlock(&priv->state_lock);
 rtnl_unlock();

 return err;
}
