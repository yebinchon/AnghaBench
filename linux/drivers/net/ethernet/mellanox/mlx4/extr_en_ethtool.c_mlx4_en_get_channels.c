
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx4_en_priv {int* tx_ring_num; TYPE_1__* prof; int rx_ring_num; TYPE_3__* mdev; } ;
struct ethtool_channels {int tx_count; int rx_count; int max_tx; int max_rx; } ;
struct TYPE_5__ {int max_num_tx_rings_p_up; } ;
struct TYPE_6__ {TYPE_2__ profile; } ;
struct TYPE_4__ {int num_up; } ;


 size_t TX ;
 int mlx4_en_get_max_num_rx_rings (struct net_device*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mlx4_en_get_channels(struct net_device *dev,
     struct ethtool_channels *channel)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 channel->max_rx = mlx4_en_get_max_num_rx_rings(dev);
 channel->max_tx = priv->mdev->profile.max_num_tx_rings_p_up;

 channel->rx_count = priv->rx_ring_num;
 channel->tx_count = priv->tx_ring_num[TX] /
       priv->prof->num_up;
}
