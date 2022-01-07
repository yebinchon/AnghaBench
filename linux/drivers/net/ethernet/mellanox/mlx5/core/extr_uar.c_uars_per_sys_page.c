
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int num_of_uars_per_page ;
 int uar_4k ;

__attribute__((used)) static int uars_per_sys_page(struct mlx5_core_dev *mdev)
{
 if (MLX5_CAP_GEN(mdev, uar_4k))
  return MLX5_CAP_GEN(mdev, num_of_uars_per_page);

 return 1;
}
