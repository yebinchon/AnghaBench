
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ steering_mode; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_5__ {int bitmap; } ;
struct TYPE_6__ {TYPE_2__ mcg_table; } ;


 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ;
 int mlx4_bitmap_cleanup (int *) ;
 TYPE_3__* mlx4_priv (struct mlx4_dev*) ;

void mlx4_cleanup_mcg_table(struct mlx4_dev *dev)
{
 if (dev->caps.steering_mode !=
     MLX4_STEERING_MODE_DEVICE_MANAGED)
  mlx4_bitmap_cleanup(&mlx4_priv(dev)->mcg_table.bitmap);
}
