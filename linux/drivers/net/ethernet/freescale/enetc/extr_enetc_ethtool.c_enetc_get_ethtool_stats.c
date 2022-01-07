
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct enetc_ndev_priv {int num_tx_rings; int num_rx_rings; TYPE_5__* si; TYPE_4__** rx_ring; TYPE_2__** tx_ring; } ;
struct enetc_hw {int dummy; } ;
struct TYPE_14__ {int reg; } ;
struct TYPE_13__ {struct enetc_hw hw; } ;
struct TYPE_11__ {int rx_alloc_errs; int packets; } ;
struct TYPE_12__ {TYPE_3__ stats; } ;
struct TYPE_9__ {int packets; } ;
struct TYPE_10__ {TYPE_1__ stats; } ;


 int ARRAY_SIZE (TYPE_6__*) ;
 TYPE_6__* enetc_port_counters ;
 int enetc_port_rd (struct enetc_hw*,int ) ;
 int enetc_rd64 (struct enetc_hw*,int ) ;
 TYPE_6__* enetc_si_counters ;
 int enetc_si_is_pf (TYPE_5__*) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void enetc_get_ethtool_stats(struct net_device *ndev,
        struct ethtool_stats *stats, u64 *data)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);
 struct enetc_hw *hw = &priv->si->hw;
 int i, o = 0;

 for (i = 0; i < ARRAY_SIZE(enetc_si_counters); i++)
  data[o++] = enetc_rd64(hw, enetc_si_counters[i].reg);

 for (i = 0; i < priv->num_tx_rings; i++)
  data[o++] = priv->tx_ring[i]->stats.packets;

 for (i = 0; i < priv->num_rx_rings; i++) {
  data[o++] = priv->rx_ring[i]->stats.packets;
  data[o++] = priv->rx_ring[i]->stats.rx_alloc_errs;
 }

 if (!enetc_si_is_pf(priv->si))
  return;

 for (i = 0; i < ARRAY_SIZE(enetc_port_counters); i++)
  data[o++] = enetc_port_rd(hw, enetc_port_counters[i].reg);
}
