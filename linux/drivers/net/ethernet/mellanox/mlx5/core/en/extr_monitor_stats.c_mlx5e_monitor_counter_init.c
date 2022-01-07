
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int update_stats_work; int wq; int monitor_counters_work; } ;


 int INIT_WORK (int *,int ) ;
 int mlx5e_monitor_counter_arm (struct mlx5e_priv*) ;
 int mlx5e_monitor_counter_start (struct mlx5e_priv*) ;
 int mlx5e_monitor_counters_work ;
 int mlx5e_set_monitor_counter (struct mlx5e_priv*) ;
 int queue_work (int ,int *) ;

void mlx5e_monitor_counter_init(struct mlx5e_priv *priv)
{
 INIT_WORK(&priv->monitor_counters_work, mlx5e_monitor_counters_work);
 mlx5e_monitor_counter_start(priv);
 mlx5e_set_monitor_counter(priv);
 mlx5e_monitor_counter_arm(priv);
 queue_work(priv->wq, &priv->update_stats_work);
}
