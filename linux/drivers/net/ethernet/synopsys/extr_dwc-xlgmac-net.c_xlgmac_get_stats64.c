
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xlgmac_stats {scalar_t__ txframecount_g; scalar_t__ txframecount_gb; int txoctetcount_gb; int rxfifooverflow; int rxcrcerror; int rxlengtherror; scalar_t__ rxmulticastframes_g; scalar_t__ rxunicastframes_g; scalar_t__ rxbroadcastframes_g; scalar_t__ rxframecount_gb; int rxoctetcount_gb; } ;
struct TYPE_3__ {int (* read_mmc_stats ) (struct xlgmac_pdata*) ;} ;
struct xlgmac_pdata {TYPE_1__ hw_ops; struct xlgmac_stats stats; } ;
struct rtnl_link_stats64 {int tx_dropped; scalar_t__ tx_errors; int tx_bytes; scalar_t__ tx_packets; int rx_fifo_errors; int rx_crc_errors; int rx_length_errors; scalar_t__ multicast; scalar_t__ rx_errors; int rx_bytes; scalar_t__ rx_packets; } ;
struct TYPE_4__ {int tx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;


 struct xlgmac_pdata* netdev_priv (struct net_device*) ;
 int stub1 (struct xlgmac_pdata*) ;

__attribute__((used)) static void xlgmac_get_stats64(struct net_device *netdev,
          struct rtnl_link_stats64 *s)
{
 struct xlgmac_pdata *pdata = netdev_priv(netdev);
 struct xlgmac_stats *pstats = &pdata->stats;

 pdata->hw_ops.read_mmc_stats(pdata);

 s->rx_packets = pstats->rxframecount_gb;
 s->rx_bytes = pstats->rxoctetcount_gb;
 s->rx_errors = pstats->rxframecount_gb -
         pstats->rxbroadcastframes_g -
         pstats->rxmulticastframes_g -
         pstats->rxunicastframes_g;
 s->multicast = pstats->rxmulticastframes_g;
 s->rx_length_errors = pstats->rxlengtherror;
 s->rx_crc_errors = pstats->rxcrcerror;
 s->rx_fifo_errors = pstats->rxfifooverflow;

 s->tx_packets = pstats->txframecount_gb;
 s->tx_bytes = pstats->txoctetcount_gb;
 s->tx_errors = pstats->txframecount_gb - pstats->txframecount_g;
 s->tx_dropped = netdev->stats.tx_dropped;
}
