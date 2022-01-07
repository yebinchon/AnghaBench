
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_fc_stats {int fc_pool; } ;
struct mlx5_fc {scalar_t__ bulk; } ;
struct TYPE_2__ {struct mlx5_fc_stats fc_stats; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int mlx5_fc_free (struct mlx5_core_dev*,struct mlx5_fc*) ;
 int mlx5_fc_pool_release_counter (int *,struct mlx5_fc*) ;

__attribute__((used)) static void mlx5_fc_release(struct mlx5_core_dev *dev, struct mlx5_fc *counter)
{
 struct mlx5_fc_stats *fc_stats = &dev->priv.fc_stats;

 if (counter->bulk)
  mlx5_fc_pool_release_counter(&fc_stats->fc_pool, counter);
 else
  mlx5_fc_free(dev, counter);
}
