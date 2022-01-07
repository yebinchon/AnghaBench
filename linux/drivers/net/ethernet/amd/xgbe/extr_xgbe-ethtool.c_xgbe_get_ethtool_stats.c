
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_5__ {int * rxq_bytes; int * rxq_packets; int * txq_bytes; int * txq_packets; } ;
struct TYPE_4__ {int (* read_mmc_stats ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int tx_ring_count; int rx_ring_count; TYPE_2__ ext_stats; TYPE_1__ hw_if; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_6__ {int stat_offset; } ;


 int XGBE_STATS_COUNT ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int stub1 (struct xgbe_prv_data*) ;
 TYPE_3__* xgbe_gstring_stats ;

__attribute__((used)) static void xgbe_get_ethtool_stats(struct net_device *netdev,
       struct ethtool_stats *stats, u64 *data)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 u8 *stat;
 int i;

 pdata->hw_if.read_mmc_stats(pdata);
 for (i = 0; i < XGBE_STATS_COUNT; i++) {
  stat = (u8 *)pdata + xgbe_gstring_stats[i].stat_offset;
  *data++ = *(u64 *)stat;
 }
 for (i = 0; i < pdata->tx_ring_count; i++) {
  *data++ = pdata->ext_stats.txq_packets[i];
  *data++ = pdata->ext_stats.txq_bytes[i];
 }
 for (i = 0; i < pdata->rx_ring_count; i++) {
  *data++ = pdata->ext_stats.rxq_packets[i];
  *data++ = pdata->ext_stats.rxq_bytes[i];
 }
}
