
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
struct devlink {int dummy; } ;


 struct devlink* devlink_alloc (int *,int) ;
 int mlx5_devlink_ops ;

struct devlink *mlx5_devlink_alloc(void)
{
 return devlink_alloc(&mlx5_devlink_ops, sizeof(struct mlx5_core_dev));
}
