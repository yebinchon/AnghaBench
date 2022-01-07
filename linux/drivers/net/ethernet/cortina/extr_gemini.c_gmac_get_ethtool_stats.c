
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct gemini_ethernet_port {int tx_hw_csummed; int tx_frags_linearized; scalar_t__* tx_frag_stats; int tx_stats_syncp; int rx_napi_exits; int * rx_csum_stats; int * rx_stats; int rx_stats_syncp; int * hw_stats; int ir_stats_syncp; } ;
struct ethtool_stats {int dummy; } ;


 int RX_CHKSUM_NUM ;
 int RX_STATS_NUM ;
 int RX_STATUS_NUM ;
 int TX_MAX_FRAGS ;
 int gmac_update_hw_stats (struct net_device*) ;
 struct gemini_ethernet_port* netdev_priv (struct net_device*) ;
 unsigned int u64_stats_fetch_begin (int *) ;
 scalar_t__ u64_stats_fetch_retry (int *,unsigned int) ;

__attribute__((used)) static void gmac_get_ethtool_stats(struct net_device *netdev,
       struct ethtool_stats *estats, u64 *values)
{
 struct gemini_ethernet_port *port = netdev_priv(netdev);
 unsigned int start;
 u64 *p;
 int i;

 gmac_update_hw_stats(netdev);


 do {
  p = values;
  start = u64_stats_fetch_begin(&port->ir_stats_syncp);

  for (i = 0; i < RX_STATS_NUM; i++)
   *p++ = port->hw_stats[i];

 } while (u64_stats_fetch_retry(&port->ir_stats_syncp, start));
 values = p;


 do {
  p = values;
  start = u64_stats_fetch_begin(&port->rx_stats_syncp);

  for (i = 0; i < RX_STATUS_NUM; i++)
   *p++ = port->rx_stats[i];
  for (i = 0; i < RX_CHKSUM_NUM; i++)
   *p++ = port->rx_csum_stats[i];
  *p++ = port->rx_napi_exits;

 } while (u64_stats_fetch_retry(&port->rx_stats_syncp, start));
 values = p;


 do {
  p = values;
  start = u64_stats_fetch_begin(&port->tx_stats_syncp);

  for (i = 0; i < TX_MAX_FRAGS; i++) {
   *values++ = port->tx_frag_stats[i];
   port->tx_frag_stats[i] = 0;
  }
  *values++ = port->tx_frags_linearized;
  *values++ = port->tx_hw_csummed;

 } while (u64_stats_fetch_retry(&port->tx_stats_syncp, start));
}
