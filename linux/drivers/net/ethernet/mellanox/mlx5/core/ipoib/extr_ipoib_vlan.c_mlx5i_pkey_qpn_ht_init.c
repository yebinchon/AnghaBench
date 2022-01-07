
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5i_priv {struct mlx5i_pkey_qpn_ht* qpn_htbl; } ;
struct mlx5i_pkey_qpn_ht {int ht_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mlx5i_pkey_qpn_ht* kzalloc (int,int ) ;
 struct mlx5i_priv* netdev_priv (struct net_device*) ;
 int spin_lock_init (int *) ;

int mlx5i_pkey_qpn_ht_init(struct net_device *netdev)
{
 struct mlx5i_priv *ipriv = netdev_priv(netdev);
 struct mlx5i_pkey_qpn_ht *qpn_htbl;

 qpn_htbl = kzalloc(sizeof(*qpn_htbl), GFP_KERNEL);
 if (!qpn_htbl)
  return -ENOMEM;

 ipriv->qpn_htbl = qpn_htbl;
 spin_lock_init(&qpn_htbl->ht_lock);

 return 0;
}
