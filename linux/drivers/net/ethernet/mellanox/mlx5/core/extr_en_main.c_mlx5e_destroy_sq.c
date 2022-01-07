
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_destroy_sq (struct mlx5_core_dev*,int ) ;

__attribute__((used)) static void mlx5e_destroy_sq(struct mlx5_core_dev *mdev, u32 sqn)
{
 mlx5_core_destroy_sq(mdev, sqn);
}
