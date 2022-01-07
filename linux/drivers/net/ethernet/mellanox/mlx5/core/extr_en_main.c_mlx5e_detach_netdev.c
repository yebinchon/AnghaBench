
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_profile {int (* cleanup_tx ) (struct mlx5e_priv*) ;int (* cleanup_rx ) (struct mlx5e_priv*) ;int (* disable ) (struct mlx5e_priv*) ;} ;
struct mlx5e_priv {int update_stats_work; int wq; int state; struct mlx5e_profile* profile; } ;


 int MLX5E_STATE_DESTROYING ;
 int cancel_work_sync (int *) ;
 int flush_workqueue (int ) ;
 int set_bit (int ,int *) ;
 int stub1 (struct mlx5e_priv*) ;
 int stub2 (struct mlx5e_priv*) ;
 int stub3 (struct mlx5e_priv*) ;

void mlx5e_detach_netdev(struct mlx5e_priv *priv)
{
 const struct mlx5e_profile *profile = priv->profile;

 set_bit(MLX5E_STATE_DESTROYING, &priv->state);

 if (profile->disable)
  profile->disable(priv);
 flush_workqueue(priv->wq);

 profile->cleanup_rx(priv);
 profile->cleanup_tx(priv);
 cancel_work_sync(&priv->update_stats_work);
}
