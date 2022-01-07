
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qpn_to_netdev {int hlist; } ;
struct net_device {int dummy; } ;
struct mlx5i_priv {struct mlx5i_pkey_qpn_ht* qpn_htbl; } ;
struct mlx5i_pkey_qpn_ht {int ht_lock; int buckets; } ;
struct mlx5e_priv {int mdev; struct mlx5i_priv* ppriv; } ;


 int EINVAL ;
 int hlist_del_init (int *) ;
 int kfree (struct qpn_to_netdev*) ;
 int mlx5_core_warn (int ,char*) ;
 struct mlx5e_priv* mlx5i_epriv (struct net_device*) ;
 struct qpn_to_netdev* mlx5i_find_qpn_to_netdev_node (int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int mlx5i_pkey_del_qpn(struct net_device *netdev, u32 qpn)
{
 struct mlx5e_priv *epriv = mlx5i_epriv(netdev);
 struct mlx5i_priv *ipriv = epriv->ppriv;
 struct mlx5i_pkey_qpn_ht *ht = ipriv->qpn_htbl;
 struct qpn_to_netdev *node;

 node = mlx5i_find_qpn_to_netdev_node(ht->buckets, qpn);
 if (!node) {
  mlx5_core_warn(epriv->mdev, "QPN to netdev delete from HT failed\n");
  return -EINVAL;
 }

 spin_lock_bh(&ht->ht_lock);
 hlist_del_init(&node->hlist);
 spin_unlock_bh(&ht->ht_lock);
 kfree(node);

 return 0;
}
