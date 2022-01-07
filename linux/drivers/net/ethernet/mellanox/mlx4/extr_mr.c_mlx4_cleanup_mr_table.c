
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_mr_table {int mpt_bitmap; int mtt_buddy; } ;
struct mlx4_priv {scalar_t__ reserved_mtts; struct mlx4_mr_table mr_table; } ;
struct TYPE_2__ {scalar_t__ reserved_mtts; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int fls (scalar_t__) ;
 int mlx4_bitmap_cleanup (int *) ;
 int mlx4_buddy_cleanup (int *) ;
 int mlx4_free_mtt_range (struct mlx4_dev*,scalar_t__,int ) ;
 scalar_t__ mlx4_is_slave (struct mlx4_dev*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

void mlx4_cleanup_mr_table(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_mr_table *mr_table = &priv->mr_table;

 if (mlx4_is_slave(dev))
  return;
 if (priv->reserved_mtts >= 0)
  mlx4_free_mtt_range(dev, priv->reserved_mtts,
        fls(dev->caps.reserved_mtts - 1));
 mlx4_buddy_cleanup(&mr_table->mtt_buddy);
 mlx4_bitmap_cleanup(&mr_table->mpt_bitmap);
}
