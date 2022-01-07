
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mod_hdr_tbl {int lock; } ;
struct mlx5e_priv {int mdev; } ;
struct mlx5e_mod_hdr_entry {scalar_t__ compl_result; int modify_hdr; int flows; int mod_hdr_hlist; int refcnt; } ;


 int WARN_ON (int) ;
 struct mod_hdr_tbl* get_mod_hdr_table (struct mlx5e_priv*,int) ;
 int hash_del (int *) ;
 int kfree (struct mlx5e_mod_hdr_entry*) ;
 int list_empty (int *) ;
 int mlx5_modify_header_dealloc (int ,int ) ;
 int mutex_unlock (int *) ;
 int refcount_dec_and_mutex_lock (int *,int *) ;

__attribute__((used)) static void mlx5e_mod_hdr_put(struct mlx5e_priv *priv,
         struct mlx5e_mod_hdr_entry *mh,
         int namespace)
{
 struct mod_hdr_tbl *tbl = get_mod_hdr_table(priv, namespace);

 if (!refcount_dec_and_mutex_lock(&mh->refcnt, &tbl->lock))
  return;
 hash_del(&mh->mod_hdr_hlist);
 mutex_unlock(&tbl->lock);

 WARN_ON(!list_empty(&mh->flows));
 if (mh->compl_result > 0)
  mlx5_modify_header_dealloc(priv->mdev, mh->modify_hdr);

 kfree(mh);
}
