
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; scalar_t__ autoneg; } ;
struct bnxt_link_info {int autoneg; int force_link_chng; int req_flow_ctrl; } ;
struct bnxt {int hwrm_spec_code; struct bnxt_link_info link_info; } ;


 int BNXT_AUTONEG_FLOW_CTRL ;
 int BNXT_AUTONEG_SPEED ;
 int BNXT_LINK_PAUSE_RX ;
 int BNXT_LINK_PAUSE_TX ;
 int BNXT_SINGLE_PF (struct bnxt*) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int PORT_PHY_CFG_REQ_AUTO_PAUSE_AUTONEG_PAUSE ;
 int bnxt_hwrm_set_pause (struct bnxt*) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int bnxt_set_pauseparam(struct net_device *dev,
          struct ethtool_pauseparam *epause)
{
 int rc = 0;
 struct bnxt *bp = netdev_priv(dev);
 struct bnxt_link_info *link_info = &bp->link_info;

 if (!BNXT_SINGLE_PF(bp))
  return -EOPNOTSUPP;

 if (epause->autoneg) {
  if (!(link_info->autoneg & BNXT_AUTONEG_SPEED))
   return -EINVAL;

  link_info->autoneg |= BNXT_AUTONEG_FLOW_CTRL;
  if (bp->hwrm_spec_code >= 0x10201)
   link_info->req_flow_ctrl =
    PORT_PHY_CFG_REQ_AUTO_PAUSE_AUTONEG_PAUSE;
 } else {



  if (link_info->autoneg & BNXT_AUTONEG_FLOW_CTRL)
   link_info->force_link_chng = 1;
  link_info->autoneg &= ~BNXT_AUTONEG_FLOW_CTRL;
  link_info->req_flow_ctrl = 0;
 }
 if (epause->rx_pause)
  link_info->req_flow_ctrl |= BNXT_LINK_PAUSE_RX;

 if (epause->tx_pause)
  link_info->req_flow_ctrl |= BNXT_LINK_PAUSE_TX;

 if (netif_running(dev))
  rc = bnxt_hwrm_set_pause(bp);
 return rc;
}
