
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long rx_packets; unsigned long rx_bytes; unsigned long tx_packets; unsigned long tx_bytes; } ;
struct net_device {TYPE_1__ stats; } ;
struct mlx4_en_tx_ring {int bytes; int packets; } ;
struct mlx4_en_rx_ring {int bytes; int packets; } ;
struct mlx4_en_priv {int rx_ring_num; int* tx_ring_num; struct mlx4_en_tx_ring*** tx_ring; struct mlx4_en_rx_ring** rx_ring; int port_up; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;


 scalar_t__ READ_ONCE (int ) ;
 size_t TX ;
 scalar_t__ mlx4_is_master (int ) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

void mlx4_en_fold_software_stats(struct net_device *dev)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 unsigned long packets, bytes;
 int i;

 if (!priv->port_up || mlx4_is_master(mdev->dev))
  return;

 packets = 0;
 bytes = 0;
 for (i = 0; i < priv->rx_ring_num; i++) {
  const struct mlx4_en_rx_ring *ring = priv->rx_ring[i];

  packets += READ_ONCE(ring->packets);
  bytes += READ_ONCE(ring->bytes);
 }
 dev->stats.rx_packets = packets;
 dev->stats.rx_bytes = bytes;

 packets = 0;
 bytes = 0;
 for (i = 0; i < priv->tx_ring_num[TX]; i++) {
  const struct mlx4_en_tx_ring *ring = priv->tx_ring[TX][i];

  packets += READ_ONCE(ring->packets);
  bytes += READ_ONCE(ring->bytes);
 }
 dev->stats.tx_packets = packets;
 dev->stats.tx_bytes = bytes;
}
