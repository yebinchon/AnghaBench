
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_destroy_tis (struct mlx5_core_dev*,int ) ;

void mlx5e_destroy_tis(struct mlx5_core_dev *mdev, u32 tisn)
{
 mlx5_core_destroy_tis(mdev, tisn);
}
