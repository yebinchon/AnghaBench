
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int events_nb; int mdev; } ;


 int mlx5_notifier_unregister (int ,int *) ;

__attribute__((used)) static void mlx5e_disable_async_events(struct mlx5e_priv *priv)
{
 mlx5_notifier_unregister(priv->mdev, &priv->events_nb);
}
