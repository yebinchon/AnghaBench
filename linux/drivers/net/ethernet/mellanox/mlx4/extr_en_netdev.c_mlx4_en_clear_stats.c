
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx4_en_tx_ring {scalar_t__ xmit_more; scalar_t__ tso_packets; scalar_t__ wake_queue; scalar_t__ queue_stopped; scalar_t__ tx_dropped; scalar_t__ tx_csum; scalar_t__ packets; scalar_t__ bytes; } ;
struct mlx4_en_priv {int* tx_ring_num; int rx_ring_num; TYPE_1__** rx_ring; struct mlx4_en_tx_ring*** tx_ring; int pf_stats; int tx_priority_flowstats; int rx_priority_flowstats; int tx_flowstats; int rx_flowstats; int port_stats; int pkstats; int pstats; int port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;
struct TYPE_2__ {scalar_t__ csum_complete; scalar_t__ csum_none; scalar_t__ csum_ok; scalar_t__ packets; scalar_t__ bytes; } ;


 int HW ;
 size_t TX ;
 int en_dbg (int ,struct mlx4_en_priv*,char*) ;
 int memset (int *,int ,int) ;
 scalar_t__ mlx4_en_DUMP_ETH_STATS (struct mlx4_en_dev*,int ,int) ;
 int mlx4_is_slave (int ) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mlx4_en_clear_stats(struct net_device *dev)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 struct mlx4_en_tx_ring **tx_ring;
 int i;

 if (!mlx4_is_slave(mdev->dev))
  if (mlx4_en_DUMP_ETH_STATS(mdev, priv->port, 1))
   en_dbg(HW, priv, "Failed dumping statistics\n");

 memset(&priv->pstats, 0, sizeof(priv->pstats));
 memset(&priv->pkstats, 0, sizeof(priv->pkstats));
 memset(&priv->port_stats, 0, sizeof(priv->port_stats));
 memset(&priv->rx_flowstats, 0, sizeof(priv->rx_flowstats));
 memset(&priv->tx_flowstats, 0, sizeof(priv->tx_flowstats));
 memset(&priv->rx_priority_flowstats, 0,
        sizeof(priv->rx_priority_flowstats));
 memset(&priv->tx_priority_flowstats, 0,
        sizeof(priv->tx_priority_flowstats));
 memset(&priv->pf_stats, 0, sizeof(priv->pf_stats));

 tx_ring = priv->tx_ring[TX];
 for (i = 0; i < priv->tx_ring_num[TX]; i++) {
  tx_ring[i]->bytes = 0;
  tx_ring[i]->packets = 0;
  tx_ring[i]->tx_csum = 0;
  tx_ring[i]->tx_dropped = 0;
  tx_ring[i]->queue_stopped = 0;
  tx_ring[i]->wake_queue = 0;
  tx_ring[i]->tso_packets = 0;
  tx_ring[i]->xmit_more = 0;
 }
 for (i = 0; i < priv->rx_ring_num; i++) {
  priv->rx_ring[i]->bytes = 0;
  priv->rx_ring[i]->packets = 0;
  priv->rx_ring[i]->csum_ok = 0;
  priv->rx_ring[i]->csum_none = 0;
  priv->rx_ring[i]->csum_complete = 0;
 }
}
