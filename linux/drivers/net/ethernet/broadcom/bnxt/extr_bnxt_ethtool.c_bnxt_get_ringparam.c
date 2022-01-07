
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_jumbo_pending; int rx_pending; int tx_max_pending; int rx_jumbo_max_pending; int rx_max_pending; } ;
struct bnxt {int tx_ring_size; int rx_agg_ring_size; int rx_ring_size; } ;


 int BNXT_MAX_RX_DESC_CNT ;
 int BNXT_MAX_RX_JUM_DESC_CNT ;
 int BNXT_MAX_TX_DESC_CNT ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bnxt_get_ringparam(struct net_device *dev,
          struct ethtool_ringparam *ering)
{
 struct bnxt *bp = netdev_priv(dev);

 ering->rx_max_pending = BNXT_MAX_RX_DESC_CNT;
 ering->rx_jumbo_max_pending = BNXT_MAX_RX_JUM_DESC_CNT;
 ering->tx_max_pending = BNXT_MAX_TX_DESC_CNT;

 ering->rx_pending = bp->rx_ring_size;
 ering->rx_jumbo_pending = bp->rx_agg_ring_size;
 ering->tx_pending = bp->tx_ring_size;
}
