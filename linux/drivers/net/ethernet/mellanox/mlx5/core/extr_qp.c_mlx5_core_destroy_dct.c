
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
struct mlx5_core_dct {int dummy; } ;


 int _mlx5_core_destroy_dct (struct mlx5_core_dev*,struct mlx5_core_dct*,int) ;

int mlx5_core_destroy_dct(struct mlx5_core_dev *dev,
     struct mlx5_core_dct *dct)
{
 return _mlx5_core_destroy_dct(dev, dct, 1);
}
