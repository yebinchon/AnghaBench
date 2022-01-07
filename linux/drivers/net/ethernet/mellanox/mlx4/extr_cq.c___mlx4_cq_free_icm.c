
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_cq_table {int bitmap; int table; int cmpt_table; } ;
struct mlx4_priv {struct mlx4_cq_table cq_table; } ;
struct mlx4_dev {int dummy; } ;


 int MLX4_NO_RR ;
 int mlx4_bitmap_free (int *,int,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_table_put (struct mlx4_dev*,int *,int) ;

void __mlx4_cq_free_icm(struct mlx4_dev *dev, int cqn)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_cq_table *cq_table = &priv->cq_table;

 mlx4_table_put(dev, &cq_table->cmpt_table, cqn);
 mlx4_table_put(dev, &cq_table->table, cqn);
 mlx4_bitmap_free(&cq_table->bitmap, cqn, MLX4_NO_RR);
}
