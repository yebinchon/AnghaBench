
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {int tx_timeout_work; int wq; } ;


 int netdev_err (struct net_device*,char*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void mlx5e_tx_timeout(struct net_device *dev)
{
 struct mlx5e_priv *priv = netdev_priv(dev);

 netdev_err(dev, "TX timeout detected\n");
 queue_work(priv->wq, &priv->tx_timeout_work);
}
