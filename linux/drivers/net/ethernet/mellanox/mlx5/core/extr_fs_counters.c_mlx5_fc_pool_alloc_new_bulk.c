
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fc_pool {int available_fcs; struct mlx5_core_dev* dev; } ;
struct mlx5_fc_bulk {scalar_t__ bulk_len; } ;
struct mlx5_core_dev {int dummy; } ;


 int IS_ERR (struct mlx5_fc_bulk*) ;
 struct mlx5_fc_bulk* mlx5_fc_bulk_create (struct mlx5_core_dev*) ;
 int mlx5_fc_pool_update_threshold (struct mlx5_fc_pool*) ;

__attribute__((used)) static struct mlx5_fc_bulk *
mlx5_fc_pool_alloc_new_bulk(struct mlx5_fc_pool *fc_pool)
{
 struct mlx5_core_dev *dev = fc_pool->dev;
 struct mlx5_fc_bulk *new_bulk;

 new_bulk = mlx5_fc_bulk_create(dev);
 if (!IS_ERR(new_bulk))
  fc_pool->available_fcs += new_bulk->bulk_len;
 mlx5_fc_pool_update_threshold(fc_pool);
 return new_bulk;
}
