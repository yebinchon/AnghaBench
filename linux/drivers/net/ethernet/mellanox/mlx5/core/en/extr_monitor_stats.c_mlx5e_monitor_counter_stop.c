
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int monitor_counters_work; int monitor_counters_nb; int mdev; } ;


 int cancel_work_sync (int *) ;
 int mlx5_eq_notifier_unregister (int ,int *) ;

__attribute__((used)) static void mlx5e_monitor_counter_stop(struct mlx5e_priv *priv)
{
 mlx5_eq_notifier_unregister(priv->mdev, &priv->monitor_counters_nb);
 cancel_work_sync(&priv->monitor_counters_work);
}
