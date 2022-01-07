
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int list; int lock; } ;
struct TYPE_4__ {int list; int lock; } ;
struct TYPE_6__ {TYPE_2__ wc_head; TYPE_1__ reg_head; } ;
struct mlx5_priv {int dbg_root; int mkey_lock; int pgdir_list; int pgdir_mutex; int alloc_mutex; TYPE_3__ bfregs; int ctx_lock; int ctx_list; } ;
struct mlx5_core_dev {struct mlx5_priv priv; int device; int intf_state_mutex; int * profile; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int debugfs_create_dir (int ,int ) ;
 int debugfs_remove (int ) ;
 int dev_err (int ,char*) ;
 int dev_name (int ) ;
 int mlx5_debugfs_root ;
 int mlx5_health_cleanup (struct mlx5_core_dev*) ;
 int mlx5_health_init (struct mlx5_core_dev*) ;
 int mlx5_pagealloc_init (struct mlx5_core_dev*) ;
 int mutex_init (int *) ;
 int * profile ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int mlx5_mdev_init(struct mlx5_core_dev *dev, int profile_idx)
{
 struct mlx5_priv *priv = &dev->priv;
 int err;

 dev->profile = &profile[profile_idx];

 INIT_LIST_HEAD(&priv->ctx_list);
 spin_lock_init(&priv->ctx_lock);
 mutex_init(&dev->intf_state_mutex);

 mutex_init(&priv->bfregs.reg_head.lock);
 mutex_init(&priv->bfregs.wc_head.lock);
 INIT_LIST_HEAD(&priv->bfregs.reg_head.list);
 INIT_LIST_HEAD(&priv->bfregs.wc_head.list);

 mutex_init(&priv->alloc_mutex);
 mutex_init(&priv->pgdir_mutex);
 INIT_LIST_HEAD(&priv->pgdir_list);
 spin_lock_init(&priv->mkey_lock);

 priv->dbg_root = debugfs_create_dir(dev_name(dev->device),
         mlx5_debugfs_root);
 if (!priv->dbg_root) {
  dev_err(dev->device, "mlx5_core: error, Cannot create debugfs dir, aborting\n");
  return -ENOMEM;
 }

 err = mlx5_health_init(dev);
 if (err)
  goto err_health_init;

 err = mlx5_pagealloc_init(dev);
 if (err)
  goto err_pagealloc_init;

 return 0;

err_pagealloc_init:
 mlx5_health_cleanup(dev);
err_health_init:
 debugfs_remove(dev->priv.dbg_root);

 return err;
}
