
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int wq; int rules; int arfs_lock; } ;
struct TYPE_6__ {TYPE_2__ arfs; } ;
struct mlx5e_priv {TYPE_3__ fs; TYPE_1__* netdev; } ;
struct TYPE_4__ {int hw_features; } ;


 int ARFS_NUM_TYPES ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int NETIF_F_NTUPLE ;
 int arfs_create_table (struct mlx5e_priv*,int) ;
 int create_singlethread_workqueue (char*) ;
 int mlx5e_arfs_destroy_tables (struct mlx5e_priv*) ;
 int spin_lock_init (int *) ;

int mlx5e_arfs_create_tables(struct mlx5e_priv *priv)
{
 int err = 0;
 int i;

 if (!(priv->netdev->hw_features & NETIF_F_NTUPLE))
  return 0;

 spin_lock_init(&priv->fs.arfs.arfs_lock);
 INIT_LIST_HEAD(&priv->fs.arfs.rules);
 priv->fs.arfs.wq = create_singlethread_workqueue("mlx5e_arfs");
 if (!priv->fs.arfs.wq)
  return -ENOMEM;

 for (i = 0; i < ARFS_NUM_TYPES; i++) {
  err = arfs_create_table(priv, i);
  if (err)
   goto err;
 }
 return 0;
err:
 mlx5e_arfs_destroy_tables(priv);
 return err;
}
