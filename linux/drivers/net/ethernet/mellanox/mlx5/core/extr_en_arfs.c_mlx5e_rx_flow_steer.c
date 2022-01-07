
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {scalar_t__ encapsulation; } ;
struct net_device {int dummy; } ;
struct mlx5e_arfs_tables {int arfs_lock; int wq; } ;
struct TYPE_4__ {struct mlx5e_arfs_tables arfs; } ;
struct mlx5e_priv {TYPE_2__ fs; } ;
struct TYPE_3__ {scalar_t__ n_proto; int ip_proto; } ;
struct flow_keys {TYPE_1__ basic; } ;
struct arfs_table {int dummy; } ;
struct arfs_rule {int filter_id; int arfs_work; int rxq; } ;


 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 struct arfs_rule* arfs_alloc_rule (struct mlx5e_priv*,struct arfs_table*,struct flow_keys*,int ,int ) ;
 struct arfs_rule* arfs_find_rule (struct arfs_table*,struct flow_keys*) ;
 struct arfs_table* arfs_get_table (struct mlx5e_arfs_tables*,int ,scalar_t__) ;
 scalar_t__ htons (int ) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int queue_work (int ,int *) ;
 int skb_flow_dissect_flow_keys (struct sk_buff const*,struct flow_keys*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int mlx5e_rx_flow_steer(struct net_device *dev, const struct sk_buff *skb,
   u16 rxq_index, u32 flow_id)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 struct mlx5e_arfs_tables *arfs = &priv->fs.arfs;
 struct arfs_table *arfs_t;
 struct arfs_rule *arfs_rule;
 struct flow_keys fk;

 if (!skb_flow_dissect_flow_keys(skb, &fk, 0))
  return -EPROTONOSUPPORT;

 if (fk.basic.n_proto != htons(ETH_P_IP) &&
     fk.basic.n_proto != htons(ETH_P_IPV6))
  return -EPROTONOSUPPORT;

 if (skb->encapsulation)
  return -EPROTONOSUPPORT;

 arfs_t = arfs_get_table(arfs, fk.basic.ip_proto, fk.basic.n_proto);
 if (!arfs_t)
  return -EPROTONOSUPPORT;

 spin_lock_bh(&arfs->arfs_lock);
 arfs_rule = arfs_find_rule(arfs_t, &fk);
 if (arfs_rule) {
  if (arfs_rule->rxq == rxq_index) {
   spin_unlock_bh(&arfs->arfs_lock);
   return arfs_rule->filter_id;
  }
  arfs_rule->rxq = rxq_index;
 } else {
  arfs_rule = arfs_alloc_rule(priv, arfs_t, &fk, rxq_index, flow_id);
  if (!arfs_rule) {
   spin_unlock_bh(&arfs->arfs_lock);
   return -ENOMEM;
  }
 }
 queue_work(priv->fs.arfs.wq, &arfs_rule->arfs_work);
 spin_unlock_bh(&arfs->arfs_lock);
 return arfs_rule->filter_id;
}
