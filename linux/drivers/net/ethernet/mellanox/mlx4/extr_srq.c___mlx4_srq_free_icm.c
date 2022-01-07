
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_srq_table {int bitmap; int table; int cmpt_table; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_srq_table srq_table; } ;


 int MLX4_NO_RR ;
 int mlx4_bitmap_free (int *,int,int ) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_table_put (struct mlx4_dev*,int *,int) ;

void __mlx4_srq_free_icm(struct mlx4_dev *dev, int srqn)
{
 struct mlx4_srq_table *srq_table = &mlx4_priv(dev)->srq_table;

 mlx4_table_put(dev, &srq_table->cmpt_table, srqn);
 mlx4_table_put(dev, &srq_table->table, srqn);
 mlx4_bitmap_free(&srq_table->bitmap, srqn, MLX4_NO_RR);
}
