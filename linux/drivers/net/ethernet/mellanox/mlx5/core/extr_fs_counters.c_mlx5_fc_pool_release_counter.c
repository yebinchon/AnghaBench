
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fc_pool {scalar_t__ available_fcs; scalar_t__ threshold; int pool_lock; int unused; int partially_used; int used_fcs; struct mlx5_core_dev* dev; } ;
struct mlx5_fc_bulk {int bulk_len; int pool_list; } ;
struct mlx5_fc {struct mlx5_fc_bulk* bulk; } ;
struct mlx5_core_dev {int dummy; } ;


 int list_add (int *,int *) ;
 int list_del (int *) ;
 int list_move_tail (int *,int *) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int mlx5_fc_bulk_get_free_fcs_amount (struct mlx5_fc_bulk*) ;
 scalar_t__ mlx5_fc_bulk_release_fc (struct mlx5_fc_bulk*,struct mlx5_fc*) ;
 int mlx5_fc_pool_free_bulk (struct mlx5_fc_pool*,struct mlx5_fc_bulk*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
mlx5_fc_pool_release_counter(struct mlx5_fc_pool *fc_pool, struct mlx5_fc *fc)
{
 struct mlx5_core_dev *dev = fc_pool->dev;
 struct mlx5_fc_bulk *bulk = fc->bulk;
 int bulk_free_fcs_amount;

 mutex_lock(&fc_pool->pool_lock);

 if (mlx5_fc_bulk_release_fc(bulk, fc)) {
  mlx5_core_warn(dev, "Attempted to release a counter which is not acquired\n");
  goto unlock;
 }

 fc_pool->available_fcs++;
 fc_pool->used_fcs--;

 bulk_free_fcs_amount = mlx5_fc_bulk_get_free_fcs_amount(bulk);
 if (bulk_free_fcs_amount == 1)
  list_move_tail(&bulk->pool_list, &fc_pool->partially_used);
 if (bulk_free_fcs_amount == bulk->bulk_len) {
  list_del(&bulk->pool_list);
  if (fc_pool->available_fcs > fc_pool->threshold)
   mlx5_fc_pool_free_bulk(fc_pool, bulk);
  else
   list_add(&bulk->pool_list, &fc_pool->unused);
 }

unlock:
 mutex_unlock(&fc_pool->pool_lock);
}
