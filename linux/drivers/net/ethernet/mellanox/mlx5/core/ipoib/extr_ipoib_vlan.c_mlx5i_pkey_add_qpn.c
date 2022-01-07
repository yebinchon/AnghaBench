
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct qpn_to_netdev {int hlist; int underlay_qpn; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct mlx5i_priv {struct mlx5i_pkey_qpn_ht* qpn_htbl; } ;
struct mlx5i_pkey_qpn_ht {int ht_lock; int * buckets; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5I_MAX_LOG_PKEY_SUP ;
 size_t hash_32 (int ,int ) ;
 int hlist_add_head (int *,int *) ;
 struct qpn_to_netdev* kzalloc (int,int ) ;
 struct mlx5i_priv* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int mlx5i_pkey_add_qpn(struct net_device *netdev, u32 qpn)
{
 struct mlx5i_priv *ipriv = netdev_priv(netdev);
 struct mlx5i_pkey_qpn_ht *ht = ipriv->qpn_htbl;
 u8 key = hash_32(qpn, MLX5I_MAX_LOG_PKEY_SUP);
 struct qpn_to_netdev *new_node;

 new_node = kzalloc(sizeof(*new_node), GFP_KERNEL);
 if (!new_node)
  return -ENOMEM;

 new_node->netdev = netdev;
 new_node->underlay_qpn = qpn;
 spin_lock_bh(&ht->ht_lock);
 hlist_add_head(&new_node->hlist, &ht->buckets[key]);
 spin_unlock_bh(&ht->ht_lock);

 return 0;
}
