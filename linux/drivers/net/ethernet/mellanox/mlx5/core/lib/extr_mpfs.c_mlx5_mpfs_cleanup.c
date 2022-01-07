
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_mpfs {int bitmap; int hash; } ;
struct TYPE_2__ {struct mlx5_mpfs* mpfs; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int MLX5_ESWITCH_MANAGER (struct mlx5_core_dev*) ;
 int WARN_ON (int) ;
 int bitmap_free (int ) ;
 int hlist_empty (int ) ;
 int kfree (struct mlx5_mpfs*) ;

void mlx5_mpfs_cleanup(struct mlx5_core_dev *dev)
{
 struct mlx5_mpfs *mpfs = dev->priv.mpfs;

 if (!MLX5_ESWITCH_MANAGER(dev))
  return;

 WARN_ON(!hlist_empty(mpfs->hash));
 bitmap_free(mpfs->bitmap);
 kfree(mpfs);
}
