
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5i_priv {int qpn_htbl; } ;


 int kfree (int ) ;
 struct mlx5i_priv* netdev_priv (struct net_device*) ;

void mlx5i_pkey_qpn_ht_cleanup(struct net_device *netdev)
{
 struct mlx5i_priv *ipriv = netdev_priv(netdev);

 kfree(ipriv->qpn_htbl);
}
