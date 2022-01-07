
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct skge_port {scalar_t__ autoneg; int speed; int flow_status; int duplex; } ;
struct skge_hw {struct net_device** dev; } ;
struct net_device {int dummy; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int FLOW_STAT_LOC_SEND ;
 int FLOW_STAT_NONE ;
 int FLOW_STAT_REM_SEND ;
 int FLOW_STAT_SYMMETRIC ;
 int PHY_BCOM_AUX_STAT ;
 int PHY_BCOM_STAT ;
 int PHY_B_AN_RF ;
 int PHY_B_AS_AN_RES_MSK ;





 int PHY_ST_AN_OVER ;
 int PHY_ST_LSYNC ;
 int PHY_XMAC_AUNE_LP ;
 int SPEED_1000 ;
 int genesis_link_up (struct skge_port*) ;
 int netdev_notice (struct net_device*,char*) ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int xm_link_down (struct skge_hw*,int) ;
 int xm_phy_read (struct skge_hw*,int,int ) ;

__attribute__((used)) static void bcom_check_link(struct skge_hw *hw, int port)
{
 struct net_device *dev = hw->dev[port];
 struct skge_port *skge = netdev_priv(dev);
 u16 status;


 xm_phy_read(hw, port, PHY_BCOM_STAT);
 status = xm_phy_read(hw, port, PHY_BCOM_STAT);

 if ((status & PHY_ST_LSYNC) == 0) {
  xm_link_down(hw, port);
  return;
 }

 if (skge->autoneg == AUTONEG_ENABLE) {
  u16 lpa, aux;

  if (!(status & PHY_ST_AN_OVER))
   return;

  lpa = xm_phy_read(hw, port, PHY_XMAC_AUNE_LP);
  if (lpa & PHY_B_AN_RF) {
   netdev_notice(dev, "remote fault\n");
   return;
  }

  aux = xm_phy_read(hw, port, PHY_BCOM_AUX_STAT);


  switch (aux & PHY_B_AS_AN_RES_MSK) {
  case 129:
   skge->duplex = DUPLEX_FULL;
   break;
  case 128:
   skge->duplex = DUPLEX_HALF;
   break;
  default:
   netdev_notice(dev, "duplex mismatch\n");
   return;
  }


  switch (aux & 132) {
  case 132:
   skge->flow_status = FLOW_STAT_SYMMETRIC;
   break;
  case 131:
   skge->flow_status = FLOW_STAT_REM_SEND;
   break;
  case 130:
   skge->flow_status = FLOW_STAT_LOC_SEND;
   break;
  default:
   skge->flow_status = FLOW_STAT_NONE;
  }
  skge->speed = SPEED_1000;
 }

 if (!netif_carrier_ok(dev))
  genesis_link_up(skge);
}
