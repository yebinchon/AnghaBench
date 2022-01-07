
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx5e_tc_flow {TYPE_3__* encaps; } ;
struct mlx5e_priv {TYPE_2__* mdev; } ;
struct mlx5e_encap_entry {int encap_hlist; int refcnt; } ;
struct TYPE_8__ {int encap_tbl_lock; } ;
struct mlx5_eswitch {TYPE_4__ offloads; } ;
struct TYPE_7__ {struct mlx5e_encap_entry* e; int list; } ;
struct TYPE_5__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_6__ {TYPE_1__ priv; } ;


 int hash_del_rcu (int *) ;
 int list_del (int *) ;
 int mlx5e_encap_dealloc (struct mlx5e_priv*,struct mlx5e_encap_entry*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_dec_and_test (int *) ;

__attribute__((used)) static void mlx5e_detach_encap(struct mlx5e_priv *priv,
          struct mlx5e_tc_flow *flow, int out_index)
{
 struct mlx5e_encap_entry *e = flow->encaps[out_index].e;
 struct mlx5_eswitch *esw = priv->mdev->priv.eswitch;


 if (!e)
  return;

 mutex_lock(&esw->offloads.encap_tbl_lock);
 list_del(&flow->encaps[out_index].list);
 flow->encaps[out_index].e = ((void*)0);
 if (!refcount_dec_and_test(&e->refcnt)) {
  mutex_unlock(&esw->offloads.encap_tbl_lock);
  return;
 }
 hash_del_rcu(&e->encap_hlist);
 mutex_unlock(&esw->offloads.encap_tbl_lock);

 mlx5e_encap_dealloc(priv, e);
}
