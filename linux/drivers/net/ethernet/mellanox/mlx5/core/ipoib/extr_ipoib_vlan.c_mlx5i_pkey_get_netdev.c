
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qpn_to_netdev {struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct mlx5i_priv {TYPE_1__* qpn_htbl; } ;
struct TYPE_2__ {int buckets; } ;


 struct qpn_to_netdev* mlx5i_find_qpn_to_netdev_node (int ,int ) ;
 struct mlx5i_priv* netdev_priv (struct net_device*) ;

struct net_device *mlx5i_pkey_get_netdev(struct net_device *netdev, u32 qpn)
{
 struct mlx5i_priv *ipriv = netdev_priv(netdev);
 struct qpn_to_netdev *node;

 node = mlx5i_find_qpn_to_netdev_node(ipriv->qpn_htbl->buckets, qpn);
 if (!node)
  return ((void*)0);

 return node->netdev;
}
