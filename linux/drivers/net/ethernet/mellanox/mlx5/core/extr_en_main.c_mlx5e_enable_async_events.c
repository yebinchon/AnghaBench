
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int notifier_call; } ;
struct mlx5e_priv {TYPE_1__ events_nb; int mdev; } ;


 int async_event ;
 int mlx5_notifier_register (int ,TYPE_1__*) ;

__attribute__((used)) static void mlx5e_enable_async_events(struct mlx5e_priv *priv)
{
 priv->events_nb.notifier_call = async_event;
 mlx5_notifier_register(priv->mdev, &priv->events_nb);
}
