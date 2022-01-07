
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int destroy_async_eqs (struct mlx5_core_dev*) ;
 int destroy_comp_eqs (struct mlx5_core_dev*) ;

void mlx5_eq_table_destroy(struct mlx5_core_dev *dev)
{
 destroy_comp_eqs(dev);
 destroy_async_eqs(dev);
}
