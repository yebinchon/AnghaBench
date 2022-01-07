
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;


 int mlx5e_monitor_counter_disable (struct mlx5e_priv*) ;
 int mlx5e_monitor_counter_stop (struct mlx5e_priv*) ;

void mlx5e_monitor_counter_cleanup(struct mlx5e_priv *priv)
{
 mlx5e_monitor_counter_disable(priv);
 mlx5e_monitor_counter_stop(priv);
}
