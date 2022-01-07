
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rtnl_link_stats64 {int tx_bytes; int tx_packets; int rx_bytes; int rx_packets; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int num_queues; } ;
struct TYPE_5__ {int num_queues; } ;
struct gve_priv {TYPE_4__* tx; TYPE_3__ tx_cfg; TYPE_2__* rx; TYPE_1__ rx_cfg; } ;
struct TYPE_8__ {scalar_t__ bytes_done; scalar_t__ pkt_done; int statss; } ;
struct TYPE_6__ {scalar_t__ rbytes; scalar_t__ rpackets; int statss; } ;


 struct gve_priv* netdev_priv (struct net_device*) ;
 unsigned int u64_stats_fetch_begin (int *) ;
 scalar_t__ u64_stats_fetch_retry (int *,unsigned int) ;

__attribute__((used)) static void gve_get_stats(struct net_device *dev, struct rtnl_link_stats64 *s)
{
 struct gve_priv *priv = netdev_priv(dev);
 unsigned int start;
 int ring;

 if (priv->rx) {
  for (ring = 0; ring < priv->rx_cfg.num_queues; ring++) {
   do {
    start =
      u64_stats_fetch_begin(&priv->rx[ring].statss);
    s->rx_packets += priv->rx[ring].rpackets;
    s->rx_bytes += priv->rx[ring].rbytes;
   } while (u64_stats_fetch_retry(&priv->rx[ring].statss,
             start));
  }
 }
 if (priv->tx) {
  for (ring = 0; ring < priv->tx_cfg.num_queues; ring++) {
   do {
    start =
      u64_stats_fetch_begin(&priv->tx[ring].statss);
    s->tx_packets += priv->tx[ring].pkt_done;
    s->tx_bytes += priv->tx[ring].bytes_done;
   } while (u64_stats_fetch_retry(&priv->tx[ring].statss,
             start));
  }
 }
}
