
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_lag {TYPE_2__* pf; } ;
struct TYPE_3__ {int * lag; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct TYPE_4__ {struct mlx5_core_dev* dev; } ;


 int MLX5_MAX_PORTS ;
 int lag_mutex ;
 int memset (TYPE_2__*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mlx5_lag_dev_remove_pf(struct mlx5_lag *ldev,
       struct mlx5_core_dev *dev)
{
 int i;

 for (i = 0; i < MLX5_MAX_PORTS; i++)
  if (ldev->pf[i].dev == dev)
   break;

 if (i == MLX5_MAX_PORTS)
  return;

 mutex_lock(&lag_mutex);
 memset(&ldev->pf[i], 0, sizeof(*ldev->pf));

 dev->priv.lag = ((void*)0);
 mutex_unlock(&lag_mutex);
}
