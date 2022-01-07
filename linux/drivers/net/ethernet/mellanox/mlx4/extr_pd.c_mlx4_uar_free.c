
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_uar {int index; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_3__ {int bitmap; } ;
struct TYPE_4__ {TYPE_1__ uar_table; } ;


 int MLX4_USE_RR ;
 int mlx4_bitmap_free (int *,int ,int ) ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;

void mlx4_uar_free(struct mlx4_dev *dev, struct mlx4_uar *uar)
{
 mlx4_bitmap_free(&mlx4_priv(dev)->uar_table.bitmap, uar->index, MLX4_USE_RR);
}
