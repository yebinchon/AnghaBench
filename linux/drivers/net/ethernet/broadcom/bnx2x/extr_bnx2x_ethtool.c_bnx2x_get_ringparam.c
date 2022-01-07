
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int rx_max_pending; int rx_pending; int tx_pending; int tx_max_pending; } ;
struct bnx2x {int rx_ring_size; int tx_ring_size; } ;


 int BNX2X_NUM_RX_QUEUES (struct bnx2x*) ;
 scalar_t__ IS_MF_FCOE_AFEX (struct bnx2x*) ;
 int MAX_RX_AVAIL ;
 int MAX_TX_AVAIL ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bnx2x_get_ringparam(struct net_device *dev,
    struct ethtool_ringparam *ering)
{
 struct bnx2x *bp = netdev_priv(dev);

 ering->rx_max_pending = MAX_RX_AVAIL;







 if (bp->rx_ring_size)
  ering->rx_pending = bp->rx_ring_size;
 else if (BNX2X_NUM_RX_QUEUES(bp))
  ering->rx_pending = MAX_RX_AVAIL / BNX2X_NUM_RX_QUEUES(bp);
 else
  ering->rx_pending = MAX_RX_AVAIL;

 ering->tx_max_pending = IS_MF_FCOE_AFEX(bp) ? 0 : MAX_TX_AVAIL;
 ering->tx_pending = bp->tx_ring_size;
}
