
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_fc_stats {int fc_pool; } ;
struct mlx5_fc {int dummy; } ;
struct TYPE_2__ {struct mlx5_fc_stats fc_stats; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int IS_ERR (struct mlx5_fc*) ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int flow_counter_bulk_alloc ;
 struct mlx5_fc* mlx5_fc_pool_acquire_counter (int *) ;
 struct mlx5_fc* mlx5_fc_single_alloc (struct mlx5_core_dev*) ;

__attribute__((used)) static struct mlx5_fc *mlx5_fc_acquire(struct mlx5_core_dev *dev, bool aging)
{
 struct mlx5_fc_stats *fc_stats = &dev->priv.fc_stats;
 struct mlx5_fc *counter;

 if (aging && MLX5_CAP_GEN(dev, flow_counter_bulk_alloc) != 0) {
  counter = mlx5_fc_pool_acquire_counter(&fc_stats->fc_pool);
  if (!IS_ERR(counter))
   return counter;
 }

 return mlx5_fc_single_alloc(dev);
}
