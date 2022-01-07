
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct enetc_ndev_priv {int num_tx_rings; int num_rx_rings; int si; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;
 int ETH_SS_STATS ;
 int enetc_port_counters ;
 int enetc_si_counters ;
 scalar_t__ enetc_si_is_pf (int ) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;
 int rx_ring_stats ;
 int tx_ring_stats ;

__attribute__((used)) static int enetc_get_sset_count(struct net_device *ndev, int sset)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);

 if (sset == ETH_SS_STATS)
  return ARRAY_SIZE(enetc_si_counters) +
   ARRAY_SIZE(tx_ring_stats) * priv->num_tx_rings +
   ARRAY_SIZE(rx_ring_stats) * priv->num_rx_rings +
   (enetc_si_is_pf(priv->si) ?
   ARRAY_SIZE(enetc_port_counters) : 0);

 return -EOPNOTSUPP;
}
