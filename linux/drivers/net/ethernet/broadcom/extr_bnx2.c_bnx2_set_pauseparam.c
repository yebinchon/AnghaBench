
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
struct bnx2 {int phy_lock; int phy_port; int autoneg; int req_flow_ctrl; } ;


 int AUTONEG_FLOW_CTRL ;
 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 int bnx2_setup_phy (struct bnx2*,int ) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
bnx2_set_pauseparam(struct net_device *dev, struct ethtool_pauseparam *epause)
{
 struct bnx2 *bp = netdev_priv(dev);

 bp->req_flow_ctrl = 0;
 if (epause->rx_pause)
  bp->req_flow_ctrl |= FLOW_CTRL_RX;
 if (epause->tx_pause)
  bp->req_flow_ctrl |= FLOW_CTRL_TX;

 if (epause->autoneg) {
  bp->autoneg |= AUTONEG_FLOW_CTRL;
 }
 else {
  bp->autoneg &= ~AUTONEG_FLOW_CTRL;
 }

 if (netif_running(dev)) {
  spin_lock_bh(&bp->phy_lock);
  bnx2_setup_phy(bp, bp->phy_port);
  spin_unlock_bh(&bp->phy_lock);
 }

 return 0;
}
