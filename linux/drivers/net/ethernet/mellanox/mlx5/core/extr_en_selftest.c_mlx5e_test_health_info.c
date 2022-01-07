
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_priv {TYPE_2__* mdev; } ;
struct mlx5_core_health {scalar_t__ fatal_error; } ;
struct TYPE_3__ {struct mlx5_core_health health; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;



__attribute__((used)) static int mlx5e_test_health_info(struct mlx5e_priv *priv)
{
 struct mlx5_core_health *health = &priv->mdev->priv.health;

 return health->fatal_error ? 1 : 0;
}
