
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fc_pool {int pool_lock; int used_fcs; int available_fcs; int partially_used; int unused; int fully_used; } ;
struct mlx5_fc_bulk {int pool_list; } ;
struct mlx5_fc {int pool_list; } ;


 struct mlx5_fc_bulk* ERR_CAST (struct mlx5_fc_bulk*) ;
 scalar_t__ IS_ERR (struct mlx5_fc_bulk*) ;
 int list_add (int *,int *) ;
 struct mlx5_fc_bulk* mlx5_fc_bulk_acquire_fc (struct mlx5_fc_bulk*) ;
 struct mlx5_fc_bulk* mlx5_fc_pool_acquire_from_list (int *,int *,int) ;
 struct mlx5_fc_bulk* mlx5_fc_pool_alloc_new_bulk (struct mlx5_fc_pool*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct mlx5_fc *
mlx5_fc_pool_acquire_counter(struct mlx5_fc_pool *fc_pool)
{
 struct mlx5_fc_bulk *new_bulk;
 struct mlx5_fc *fc;

 mutex_lock(&fc_pool->pool_lock);

 fc = mlx5_fc_pool_acquire_from_list(&fc_pool->partially_used,
         &fc_pool->fully_used, 0);
 if (IS_ERR(fc))
  fc = mlx5_fc_pool_acquire_from_list(&fc_pool->unused,
          &fc_pool->partially_used,
          1);
 if (IS_ERR(fc)) {
  new_bulk = mlx5_fc_pool_alloc_new_bulk(fc_pool);
  if (IS_ERR(new_bulk)) {
   fc = ERR_CAST(new_bulk);
   goto out;
  }
  fc = mlx5_fc_bulk_acquire_fc(new_bulk);
  list_add(&new_bulk->pool_list, &fc_pool->partially_used);
 }
 fc_pool->available_fcs--;
 fc_pool->used_fcs++;

out:
 mutex_unlock(&fc_pool->pool_lock);
 return fc;
}
