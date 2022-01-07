
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fc_pool {scalar_t__ threshold; scalar_t__ used_fcs; scalar_t__ available_fcs; int unused; int partially_used; int fully_used; int pool_lock; struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static void mlx5_fc_pool_init(struct mlx5_fc_pool *fc_pool, struct mlx5_core_dev *dev)
{
 fc_pool->dev = dev;
 mutex_init(&fc_pool->pool_lock);
 INIT_LIST_HEAD(&fc_pool->fully_used);
 INIT_LIST_HEAD(&fc_pool->partially_used);
 INIT_LIST_HEAD(&fc_pool->unused);
 fc_pool->available_fcs = 0;
 fc_pool->used_fcs = 0;
 fc_pool->threshold = 0;
}
