
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ duplex; void* mii_rmii; int speed; int link; } ;
union gmac_status {scalar_t__ bits32; TYPE_1__ bits; } ;
typedef int u8 ;
typedef int u16 ;
struct phy_device {scalar_t__ duplex; int speed; scalar_t__ asym_pause; scalar_t__ pause; int interface; int link; } ;
struct net_device {struct phy_device* phydev; } ;
struct gemini_ethernet_port {scalar_t__ gmac_base; } ;


 scalar_t__ DUPLEX_FULL ;
 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 void* GMAC_PHY_RGMII_1000 ;
 void* GMAC_PHY_RGMII_100_10 ;
 int GMAC_SPEED_10 ;
 int GMAC_SPEED_100 ;
 int GMAC_SPEED_1000 ;
 scalar_t__ GMAC_STATUS ;
 int MII_ADVERTISE ;
 int MII_LPA ;
 int PHY_INTERFACE_MODE_RGMII ;
 int gmac_disable_tx_rx (struct net_device*) ;
 int gmac_enable_tx_rx (struct net_device*) ;
 int gmac_set_flow_control (struct net_device*,int,int) ;
 int mii_resolve_flowctrl_fdx (int ,int ) ;
 int netdev_dbg (struct net_device*,char*,int ) ;
 int netdev_info (struct net_device*,char*,char*) ;
 struct gemini_ethernet_port* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int,int ) ;
 scalar_t__ netif_msg_link (struct gemini_ethernet_port*) ;
 int phy_print_status (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;
 int phydev_name (struct phy_device*) ;
 scalar_t__ readl (scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void gmac_speed_set(struct net_device *netdev)
{
 struct gemini_ethernet_port *port = netdev_priv(netdev);
 struct phy_device *phydev = netdev->phydev;
 union gmac_status status, old_status;
 int pause_tx = 0;
 int pause_rx = 0;

 status.bits32 = readl(port->gmac_base + GMAC_STATUS);
 old_status.bits32 = status.bits32;
 status.bits.link = phydev->link;
 status.bits.duplex = phydev->duplex;

 switch (phydev->speed) {
 case 1000:
  status.bits.speed = GMAC_SPEED_1000;
  if (phydev->interface == PHY_INTERFACE_MODE_RGMII)
   status.bits.mii_rmii = GMAC_PHY_RGMII_1000;
  netdev_dbg(netdev, "connect %s to RGMII @ 1Gbit\n",
      phydev_name(phydev));
  break;
 case 100:
  status.bits.speed = GMAC_SPEED_100;
  if (phydev->interface == PHY_INTERFACE_MODE_RGMII)
   status.bits.mii_rmii = GMAC_PHY_RGMII_100_10;
  netdev_dbg(netdev, "connect %s to RGMII @ 100 Mbit\n",
      phydev_name(phydev));
  break;
 case 10:
  status.bits.speed = GMAC_SPEED_10;
  if (phydev->interface == PHY_INTERFACE_MODE_RGMII)
   status.bits.mii_rmii = GMAC_PHY_RGMII_100_10;
  netdev_dbg(netdev, "connect %s to RGMII @ 10 Mbit\n",
      phydev_name(phydev));
  break;
 default:
  netdev_warn(netdev, "Unsupported PHY speed (%d) on %s\n",
       phydev->speed, phydev_name(phydev));
 }

 if (phydev->duplex == DUPLEX_FULL) {
  u16 lcladv = phy_read(phydev, MII_ADVERTISE);
  u16 rmtadv = phy_read(phydev, MII_LPA);
  u8 cap = mii_resolve_flowctrl_fdx(lcladv, rmtadv);

  if (cap & FLOW_CTRL_RX)
   pause_rx = 1;
  if (cap & FLOW_CTRL_TX)
   pause_tx = 1;
 }

 gmac_set_flow_control(netdev, pause_tx, pause_rx);

 if (old_status.bits32 == status.bits32)
  return;

 if (netif_msg_link(port)) {
  phy_print_status(phydev);
  netdev_info(netdev, "link flow control: %s\n",
       phydev->pause
       ? (phydev->asym_pause ? "tx" : "both")
       : (phydev->asym_pause ? "rx" : "none")
  );
 }

 gmac_disable_tx_rx(netdev);
 writel(status.bits32, port->gmac_base + GMAC_STATUS);
 gmac_enable_tx_rx(netdev);
}
