
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long uint64_t ;
typedef unsigned long u64 ;
struct net_device {int stats; } ;
struct TYPE_4__ {int bitmap; } ;
struct mlx4_en_priv {int* tx_ring_num; int rx_ring_num; int stats_lock; TYPE_3__** rx_ring; TYPE_2__*** tx_ring; int phy_stats; int xdp_stats; int pkstats; int tx_flowstats; int tx_priority_flowstats; int rx_flowstats; int rx_priority_flowstats; int pf_stats; int port_stats; TYPE_1__ stats_bitmap; } ;
struct ethtool_stats {int dummy; } ;
struct bitmap_iterator {int dummy; } ;
struct TYPE_6__ {unsigned long packets; unsigned long bytes; unsigned long dropped; unsigned long xdp_drop; unsigned long xdp_tx; unsigned long xdp_tx_full; } ;
struct TYPE_5__ {unsigned long packets; unsigned long bytes; } ;


 int NUM_ALL_STATS ;
 int NUM_FLOW_PRIORITY_STATS_RX ;
 int NUM_FLOW_PRIORITY_STATS_TX ;
 int NUM_FLOW_STATS_RX ;
 int NUM_FLOW_STATS_TX ;
 int NUM_MAIN_STATS ;
 int NUM_PF_STATS ;
 int NUM_PHY_STATS ;
 int NUM_PKT_STATS ;
 int NUM_PORT_STATS ;
 int NUM_XDP_STATS ;
 size_t TX ;
 int bitmap_iterator_inc (struct bitmap_iterator*) ;
 int bitmap_iterator_init (struct bitmap_iterator*,int ,int ) ;
 scalar_t__ bitmap_iterator_test (struct bitmap_iterator*) ;
 int mlx4_en_fold_software_stats (struct net_device*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void mlx4_en_get_ethtool_stats(struct net_device *dev,
  struct ethtool_stats *stats, uint64_t *data)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 int index = 0;
 int i;
 struct bitmap_iterator it;

 bitmap_iterator_init(&it, priv->stats_bitmap.bitmap, NUM_ALL_STATS);

 spin_lock_bh(&priv->stats_lock);

 mlx4_en_fold_software_stats(dev);

 for (i = 0; i < NUM_MAIN_STATS; i++, bitmap_iterator_inc(&it))
  if (bitmap_iterator_test(&it))
   data[index++] = ((unsigned long *)&dev->stats)[i];

 for (i = 0; i < NUM_PORT_STATS; i++, bitmap_iterator_inc(&it))
  if (bitmap_iterator_test(&it))
   data[index++] = ((unsigned long *)&priv->port_stats)[i];

 for (i = 0; i < NUM_PF_STATS; i++, bitmap_iterator_inc(&it))
  if (bitmap_iterator_test(&it))
   data[index++] =
    ((unsigned long *)&priv->pf_stats)[i];

 for (i = 0; i < NUM_FLOW_PRIORITY_STATS_RX;
      i++, bitmap_iterator_inc(&it))
  if (bitmap_iterator_test(&it))
   data[index++] =
    ((u64 *)&priv->rx_priority_flowstats)[i];

 for (i = 0; i < NUM_FLOW_STATS_RX; i++, bitmap_iterator_inc(&it))
  if (bitmap_iterator_test(&it))
   data[index++] = ((u64 *)&priv->rx_flowstats)[i];

 for (i = 0; i < NUM_FLOW_PRIORITY_STATS_TX;
      i++, bitmap_iterator_inc(&it))
  if (bitmap_iterator_test(&it))
   data[index++] =
    ((u64 *)&priv->tx_priority_flowstats)[i];

 for (i = 0; i < NUM_FLOW_STATS_TX; i++, bitmap_iterator_inc(&it))
  if (bitmap_iterator_test(&it))
   data[index++] = ((u64 *)&priv->tx_flowstats)[i];

 for (i = 0; i < NUM_PKT_STATS; i++, bitmap_iterator_inc(&it))
  if (bitmap_iterator_test(&it))
   data[index++] = ((unsigned long *)&priv->pkstats)[i];

 for (i = 0; i < NUM_XDP_STATS; i++, bitmap_iterator_inc(&it))
  if (bitmap_iterator_test(&it))
   data[index++] = ((unsigned long *)&priv->xdp_stats)[i];

 for (i = 0; i < NUM_PHY_STATS; i++, bitmap_iterator_inc(&it))
  if (bitmap_iterator_test(&it))
   data[index++] = ((unsigned long *)&priv->phy_stats)[i];

 for (i = 0; i < priv->tx_ring_num[TX]; i++) {
  data[index++] = priv->tx_ring[TX][i]->packets;
  data[index++] = priv->tx_ring[TX][i]->bytes;
 }
 for (i = 0; i < priv->rx_ring_num; i++) {
  data[index++] = priv->rx_ring[i]->packets;
  data[index++] = priv->rx_ring[i]->bytes;
  data[index++] = priv->rx_ring[i]->dropped;
  data[index++] = priv->rx_ring[i]->xdp_drop;
  data[index++] = priv->rx_ring[i]->xdp_tx;
  data[index++] = priv->rx_ring[i]->xdp_tx_full;
 }
 spin_unlock_bh(&priv->stats_lock);

}
