
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {int set_rx_mode_work; int wq; } ;


 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void mlx5e_set_rx_mode(struct net_device *dev)
{
 struct mlx5e_priv *priv = netdev_priv(dev);

 queue_work(priv->wq, &priv->set_rx_mode_work);
}
