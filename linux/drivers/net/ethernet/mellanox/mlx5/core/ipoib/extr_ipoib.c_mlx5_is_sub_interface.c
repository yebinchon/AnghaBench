
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pdn; } ;
struct mlx5_core_dev {TYPE_1__ mlx5e_res; } ;



__attribute__((used)) static bool mlx5_is_sub_interface(struct mlx5_core_dev *mdev)
{
 return mdev->mlx5e_res.pdn != 0;
}
