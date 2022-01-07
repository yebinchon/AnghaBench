
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int monitor_counters_nb; int mdev; } ;


 int MLX5_NB_INIT (int *,int ,int ) ;
 int MONITOR_COUNTER ;
 int mlx5_eq_notifier_register (int ,int *) ;
 int mlx5e_monitor_event_handler ;

__attribute__((used)) static void mlx5e_monitor_counter_start(struct mlx5e_priv *priv)
{
 MLX5_NB_INIT(&priv->monitor_counters_nb, mlx5e_monitor_event_handler,
       MONITOR_COUNTER);
 mlx5_eq_notifier_register(priv->mdev, &priv->monitor_counters_nb);
}
