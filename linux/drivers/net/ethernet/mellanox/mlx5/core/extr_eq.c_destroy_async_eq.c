
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_eq_table {int lock; } ;
struct mlx5_eq {int dummy; } ;
struct TYPE_2__ {struct mlx5_eq_table* eq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int destroy_unmap_eq (struct mlx5_core_dev*,struct mlx5_eq*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int destroy_async_eq(struct mlx5_core_dev *dev, struct mlx5_eq *eq)
{
 struct mlx5_eq_table *eq_table = dev->priv.eq_table;
 int err;

 mutex_lock(&eq_table->lock);
 err = destroy_unmap_eq(dev, eq);
 mutex_unlock(&eq_table->lock);
 return err;
}
