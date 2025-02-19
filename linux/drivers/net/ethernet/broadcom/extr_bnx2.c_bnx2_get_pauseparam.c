
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_pauseparam {int autoneg; int rx_pause; int tx_pause; } ;
struct bnx2 {int autoneg; int flow_ctrl; } ;


 int AUTONEG_FLOW_CTRL ;
 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 struct bnx2* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
bnx2_get_pauseparam(struct net_device *dev, struct ethtool_pauseparam *epause)
{
 struct bnx2 *bp = netdev_priv(dev);

 epause->autoneg = ((bp->autoneg & AUTONEG_FLOW_CTRL) != 0);
 epause->rx_pause = ((bp->flow_ctrl & FLOW_CTRL_RX) != 0);
 epause->tx_pause = ((bp->flow_ctrl & FLOW_CTRL_TX) != 0);
}
