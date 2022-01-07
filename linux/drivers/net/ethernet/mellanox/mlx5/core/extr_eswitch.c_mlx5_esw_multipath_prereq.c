
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* eswitch; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct TYPE_3__ {scalar_t__ mode; } ;


 scalar_t__ MLX5_ESWITCH_OFFLOADS ;

bool mlx5_esw_multipath_prereq(struct mlx5_core_dev *dev0,
          struct mlx5_core_dev *dev1)
{
 return (dev0->priv.eswitch->mode == MLX5_ESWITCH_OFFLOADS &&
  dev1->priv.eswitch->mode == MLX5_ESWITCH_OFFLOADS);
}
