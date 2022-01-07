
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_tun_entropy {int dummy; } ;
struct mlx5_rep_uplink_priv {struct mlx5_tun_entropy tun_entropy; } ;
struct mlx5e_rep_priv {struct mlx5_rep_uplink_priv uplink_priv; } ;
struct mlx5e_priv {struct mlx5e_rep_priv* ppriv; } ;
struct mlx5e_encap_entry {int reformat_type; TYPE_1__* nhe; int encap_list; } ;
struct TYPE_2__ {int encap_list_lock; } ;


 int list_del_rcu (int *) ;
 int mlx5_tun_entropy_refcount_dec (struct mlx5_tun_entropy*,int ) ;
 int mlx5e_rep_neigh_entry_release (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void mlx5e_rep_encap_entry_detach(struct mlx5e_priv *priv,
      struct mlx5e_encap_entry *e)
{
 struct mlx5e_rep_priv *rpriv = priv->ppriv;
 struct mlx5_rep_uplink_priv *uplink_priv = &rpriv->uplink_priv;
 struct mlx5_tun_entropy *tun_entropy = &uplink_priv->tun_entropy;

 if (!e->nhe)
  return;

 spin_lock(&e->nhe->encap_list_lock);
 list_del_rcu(&e->encap_list);
 spin_unlock(&e->nhe->encap_list_lock);

 mlx5e_rep_neigh_entry_release(e->nhe);
 e->nhe = ((void*)0);
 mlx5_tun_entropy_refcount_dec(tun_entropy, e->reformat_type);
}
