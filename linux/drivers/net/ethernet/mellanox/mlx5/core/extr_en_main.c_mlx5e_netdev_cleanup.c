
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {int wq; } ;


 int destroy_workqueue (int ) ;

void mlx5e_netdev_cleanup(struct net_device *netdev, struct mlx5e_priv *priv)
{
 destroy_workqueue(priv->wq);
}
