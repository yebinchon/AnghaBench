
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5e_priv {TYPE_2__* mdev; } ;
struct mlx5e_encap_entry {int encap_hlist; int refcnt; } ;
struct TYPE_6__ {int encap_tbl_lock; } ;
struct mlx5_eswitch {TYPE_3__ offloads; } ;
struct TYPE_4__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_5__ {TYPE_1__ priv; } ;


 int hash_del_rcu (int *) ;
 int mlx5e_encap_dealloc (struct mlx5e_priv*,struct mlx5e_encap_entry*) ;
 int mutex_unlock (int *) ;
 int refcount_dec_and_mutex_lock (int *,int *) ;

void mlx5e_encap_put(struct mlx5e_priv *priv, struct mlx5e_encap_entry *e)
{
 struct mlx5_eswitch *esw = priv->mdev->priv.eswitch;

 if (!refcount_dec_and_mutex_lock(&e->refcnt, &esw->offloads.encap_tbl_lock))
  return;
 hash_del_rcu(&e->encap_hlist);
 mutex_unlock(&esw->offloads.encap_tbl_lock);

 mlx5e_encap_dealloc(priv, e);
}
