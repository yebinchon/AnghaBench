
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fc_pool {int available_fcs; struct mlx5_core_dev* dev; } ;
struct mlx5_fc_bulk {scalar_t__ bulk_len; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_fc_bulk_destroy (struct mlx5_core_dev*,struct mlx5_fc_bulk*) ;
 int mlx5_fc_pool_update_threshold (struct mlx5_fc_pool*) ;

__attribute__((used)) static void
mlx5_fc_pool_free_bulk(struct mlx5_fc_pool *fc_pool, struct mlx5_fc_bulk *bulk)
{
 struct mlx5_core_dev *dev = fc_pool->dev;

 fc_pool->available_fcs -= bulk->bulk_len;
 mlx5_fc_bulk_destroy(dev, bulk);
 mlx5_fc_pool_update_threshold(fc_pool);
}
