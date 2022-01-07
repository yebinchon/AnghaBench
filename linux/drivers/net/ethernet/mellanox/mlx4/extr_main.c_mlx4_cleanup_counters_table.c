
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int max_counters; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_4__ {int counters_bitmap; } ;


 int MLX4_DEV_CAP_FLAG_COUNTERS ;
 int mlx4_bitmap_cleanup (int *) ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;

__attribute__((used)) static void mlx4_cleanup_counters_table(struct mlx4_dev *dev)
{
 if (!(dev->caps.flags & MLX4_DEV_CAP_FLAG_COUNTERS))
  return;

 if (!dev->caps.max_counters)
  return;

 mlx4_bitmap_cleanup(&mlx4_priv(dev)->counters_bitmap);
}
