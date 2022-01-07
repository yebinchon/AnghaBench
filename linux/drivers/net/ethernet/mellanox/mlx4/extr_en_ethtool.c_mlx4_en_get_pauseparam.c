
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx4_en_priv {TYPE_1__* prof; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; } ;
struct TYPE_2__ {int rx_pause; int tx_pause; } ;


 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mlx4_en_get_pauseparam(struct net_device *dev,
     struct ethtool_pauseparam *pause)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 pause->tx_pause = priv->prof->tx_pause;
 pause->rx_pause = priv->prof->rx_pause;
}
