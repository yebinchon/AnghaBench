
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_srq_table {int bitmap; int table; int cmpt_table; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_srq_table srq_table; } ;


 int ENOMEM ;
 int MLX4_NO_RR ;
 int mlx4_bitmap_alloc (int *) ;
 int mlx4_bitmap_free (int *,int,int ) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_table_get (struct mlx4_dev*,int *,int) ;
 int mlx4_table_put (struct mlx4_dev*,int *,int) ;

int __mlx4_srq_alloc_icm(struct mlx4_dev *dev, int *srqn)
{
 struct mlx4_srq_table *srq_table = &mlx4_priv(dev)->srq_table;
 int err;


 *srqn = mlx4_bitmap_alloc(&srq_table->bitmap);
 if (*srqn == -1)
  return -ENOMEM;

 err = mlx4_table_get(dev, &srq_table->table, *srqn);
 if (err)
  goto err_out;

 err = mlx4_table_get(dev, &srq_table->cmpt_table, *srqn);
 if (err)
  goto err_put;
 return 0;

err_put:
 mlx4_table_put(dev, &srq_table->table, *srqn);

err_out:
 mlx4_bitmap_free(&srq_table->bitmap, *srqn, MLX4_NO_RR);
 return err;
}
