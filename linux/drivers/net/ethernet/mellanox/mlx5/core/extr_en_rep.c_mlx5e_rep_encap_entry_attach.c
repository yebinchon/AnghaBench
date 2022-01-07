
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int encap_lock; } ;
struct mlx5_tun_entropy {int dummy; } ;
struct mlx5_rep_uplink_priv {struct mlx5_tun_entropy tun_entropy; } ;
struct mlx5e_rep_priv {TYPE_1__ neigh_update; struct mlx5_rep_uplink_priv uplink_priv; } ;
struct mlx5e_priv {struct mlx5e_rep_priv* ppriv; } ;
struct mlx5e_neigh_hash_entry {int encap_list_lock; int encap_list; } ;
struct mlx5e_encap_entry {int encap_list; struct mlx5e_neigh_hash_entry* nhe; int reformat_type; int m_neigh; } ;


 int list_add_rcu (int *,int *) ;
 int mlx5_tun_entropy_refcount_dec (struct mlx5_tun_entropy*,int ) ;
 int mlx5_tun_entropy_refcount_inc (struct mlx5_tun_entropy*,int ) ;
 int mlx5e_rep_neigh_entry_create (struct mlx5e_priv*,struct mlx5e_encap_entry*,struct mlx5e_neigh_hash_entry**) ;
 struct mlx5e_neigh_hash_entry* mlx5e_rep_neigh_entry_lookup (struct mlx5e_priv*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int mlx5e_rep_encap_entry_attach(struct mlx5e_priv *priv,
     struct mlx5e_encap_entry *e)
{
 struct mlx5e_rep_priv *rpriv = priv->ppriv;
 struct mlx5_rep_uplink_priv *uplink_priv = &rpriv->uplink_priv;
 struct mlx5_tun_entropy *tun_entropy = &uplink_priv->tun_entropy;
 struct mlx5e_neigh_hash_entry *nhe;
 int err;

 err = mlx5_tun_entropy_refcount_inc(tun_entropy, e->reformat_type);
 if (err)
  return err;

 mutex_lock(&rpriv->neigh_update.encap_lock);
 nhe = mlx5e_rep_neigh_entry_lookup(priv, &e->m_neigh);
 if (!nhe) {
  err = mlx5e_rep_neigh_entry_create(priv, e, &nhe);
  if (err) {
   mutex_unlock(&rpriv->neigh_update.encap_lock);
   mlx5_tun_entropy_refcount_dec(tun_entropy,
            e->reformat_type);
   return err;
  }
 }

 e->nhe = nhe;
 spin_lock(&nhe->encap_list_lock);
 list_add_rcu(&e->encap_list, &nhe->encap_list);
 spin_unlock(&nhe->encap_list_lock);

 mutex_unlock(&rpriv->neigh_update.encap_lock);

 return 0;
}
