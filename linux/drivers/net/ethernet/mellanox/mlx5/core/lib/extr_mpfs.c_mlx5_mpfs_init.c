
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_mpfs {int size; int bitmap; int lock; } ;
struct TYPE_2__ {struct mlx5_mpfs* mpfs; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_ESWITCH_MANAGER (struct mlx5_core_dev*) ;
 int bitmap_zalloc (int,int ) ;
 int kfree (struct mlx5_mpfs*) ;
 struct mlx5_mpfs* kzalloc (int,int ) ;
 int log_max_l2_table ;
 int mutex_init (int *) ;

int mlx5_mpfs_init(struct mlx5_core_dev *dev)
{
 int l2table_size = 1 << MLX5_CAP_GEN(dev, log_max_l2_table);
 struct mlx5_mpfs *mpfs;

 if (!MLX5_ESWITCH_MANAGER(dev))
  return 0;

 mpfs = kzalloc(sizeof(*mpfs), GFP_KERNEL);
 if (!mpfs)
  return -ENOMEM;

 mutex_init(&mpfs->lock);
 mpfs->size = l2table_size;
 mpfs->bitmap = bitmap_zalloc(l2table_size, GFP_KERNEL);
 if (!mpfs->bitmap) {
  kfree(mpfs);
  return -ENOMEM;
 }

 dev->priv.mpfs = mpfs;
 return 0;
}
