
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int hairpin_tbl_lock; } ;
struct TYPE_9__ {TYPE_4__ tc; } ;
struct mlx5e_priv {int netdev; TYPE_3__ fs; } ;
struct mlx5e_hairpin_entry {int flows; TYPE_5__* hp; int hairpin_hlist; int refcnt; } ;
struct TYPE_11__ {TYPE_2__* pair; } ;
struct TYPE_8__ {TYPE_1__* peer_mdev; } ;
struct TYPE_7__ {int device; } ;


 int IS_ERR_OR_NULL (TYPE_5__*) ;
 int WARN_ON (int) ;
 int dev_name (int ) ;
 int hash_del (int *) ;
 int kfree (struct mlx5e_hairpin_entry*) ;
 int list_empty (int *) ;
 int mlx5e_hairpin_destroy (TYPE_5__*) ;
 int mutex_unlock (int *) ;
 int netdev_dbg (int ,char*,int ) ;
 int refcount_dec_and_mutex_lock (int *,int *) ;

__attribute__((used)) static void mlx5e_hairpin_put(struct mlx5e_priv *priv,
         struct mlx5e_hairpin_entry *hpe)
{

 if (!refcount_dec_and_mutex_lock(&hpe->refcnt, &priv->fs.tc.hairpin_tbl_lock))
  return;
 hash_del(&hpe->hairpin_hlist);
 mutex_unlock(&priv->fs.tc.hairpin_tbl_lock);

 if (!IS_ERR_OR_NULL(hpe->hp)) {
  netdev_dbg(priv->netdev, "del hairpin: peer %s\n",
      dev_name(hpe->hp->pair->peer_mdev->device));

  mlx5e_hairpin_destroy(hpe->hp);
 }

 WARN_ON(!list_empty(&hpe->flows));
 kfree(hpe);
}
