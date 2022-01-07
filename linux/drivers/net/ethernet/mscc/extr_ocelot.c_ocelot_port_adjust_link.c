
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ocelot_port {int chip_port; struct ocelot* ocelot; } ;
struct ocelot {int shared_queue_sz; } ;
struct net_device {TYPE_1__* phydev; } ;
struct TYPE_2__ {int speed; int link; } ;


 int ANA_PFC_PFC_CFG ;
 int ANA_PFC_PFC_CFG_FC_LINK_SPEED (int) ;
 int ANA_POL_FLOWC ;
 int DEV_CLOCK_CFG ;
 int DEV_CLOCK_CFG_LINK_SPEED (int) ;
 int DEV_MAC_ENA_CFG ;
 int DEV_MAC_ENA_CFG_RX_ENA ;
 int DEV_MAC_ENA_CFG_TX_ENA ;
 int DEV_MAC_FC_MAC_HIGH_CFG ;
 int DEV_MAC_FC_MAC_LOW_CFG ;
 int DEV_MAC_HDX_CFG ;
 int DEV_MAC_HDX_CFG_LATE_COL_POS (int) ;
 int DEV_MAC_HDX_CFG_SEED_LOAD ;
 int DEV_MAC_IFG_CFG ;
 int DEV_MAC_IFG_CFG_TX_IFG (int) ;
 int DEV_MAC_MAXLEN_CFG ;
 int DEV_MAC_MODE_CFG ;
 int DEV_MAC_MODE_CFG_FDX_ENA ;
 int DEV_MAC_MODE_CFG_GIGA_MODE_ENA ;
 int DEV_MAC_TAGS_CFG ;
 int DEV_MAC_TAGS_CFG_TAG_ID (int ) ;
 int DEV_MAC_TAGS_CFG_VLAN_AWR_ENA ;
 int DEV_MAC_TAGS_CFG_VLAN_LEN_AWR_ENA ;
 int DEV_PORT_MISC ;
 int DEV_PORT_MISC_HDX_FAST_DIS ;
 int ETH_P_8021AD ;
 int OCELOT_BUFFER_CELL_SZ ;
 int OCELOT_SPEED_10 ;
 int OCELOT_SPEED_100 ;
 int OCELOT_SPEED_1000 ;
 int OCELOT_SPEED_2500 ;
 int PCS1G_ANEG_CFG ;
 int PCS1G_CFG ;
 int PCS1G_CFG_PCS_ENA ;
 int PCS1G_LB_CFG ;
 int PCS1G_MODE_CFG ;
 int PCS1G_MODE_CFG_SGMII_MODE_ENA ;
 int PCS1G_SD_CFG ;
 int PCS1G_SD_CFG_SD_SEL ;
 int QSYS_SWITCH_PORT_MODE ;
 int QSYS_SWITCH_PORT_MODE_INGRESS_DROP_MODE ;
 int QSYS_SWITCH_PORT_MODE_PORT_ENA ;
 int QSYS_SWITCH_PORT_MODE_SCH_NEXT_CFG (int) ;




 int SYS_ATOP ;
 int SYS_ATOP_TOT_CFG ;
 int SYS_MAC_FC_CFG ;
 int SYS_MAC_FC_CFG_FC_LATENCY_CFG (int) ;
 int SYS_MAC_FC_CFG_FC_LINK_SPEED (int) ;
 int SYS_MAC_FC_CFG_PAUSE_VAL_CFG (int) ;
 int SYS_MAC_FC_CFG_RX_FC_ENA ;
 int SYS_MAC_FC_CFG_TX_FC_ENA ;
 int SYS_MAC_FC_CFG_ZERO_PAUSE_ENA ;
 int SYS_PAUSE_CFG ;
 int SYS_PAUSE_CFG_PAUSE_ENA ;
 int SYS_PAUSE_CFG_PAUSE_START (int) ;
 int SYS_PAUSE_CFG_PAUSE_STOP (int) ;
 int VLAN_ETH_FRAME_LEN ;
 int mdelay (int) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct ocelot_port* netdev_priv (struct net_device*) ;
 int ocelot_port_writel (struct ocelot_port*,int,int ) ;
 int ocelot_wm_enc (int) ;
 int ocelot_write (struct ocelot*,int,int ) ;
 int ocelot_write_gix (struct ocelot*,int ,int ,int ) ;
 int ocelot_write_rix (struct ocelot*,int,int ,int ) ;
 int phy_print_status (TYPE_1__*) ;

__attribute__((used)) static void ocelot_port_adjust_link(struct net_device *dev)
{
 struct ocelot_port *port = netdev_priv(dev);
 struct ocelot *ocelot = port->ocelot;
 u8 p = port->chip_port;
 int speed, atop_wm, mode = 0;

 switch (dev->phydev->speed) {
 case 131:
  speed = OCELOT_SPEED_10;
  break;
 case 130:
  speed = OCELOT_SPEED_100;
  break;
 case 129:
  speed = OCELOT_SPEED_1000;
  mode = DEV_MAC_MODE_CFG_GIGA_MODE_ENA;
  break;
 case 128:
  speed = OCELOT_SPEED_2500;
  mode = DEV_MAC_MODE_CFG_GIGA_MODE_ENA;
  break;
 default:
  netdev_err(dev, "Unsupported PHY speed: %d\n",
      dev->phydev->speed);
  return;
 }

 phy_print_status(dev->phydev);

 if (!dev->phydev->link)
  return;


 ocelot_port_writel(port, DEV_MAC_MODE_CFG_FDX_ENA |
      mode, DEV_MAC_MODE_CFG);





 ocelot_port_writel(port, DEV_MAC_IFG_CFG_TX_IFG(5), DEV_MAC_IFG_CFG);


 ocelot_port_writel(port, DEV_MAC_HDX_CFG_LATE_COL_POS(67) |
      DEV_MAC_HDX_CFG_SEED_LOAD,
      DEV_MAC_HDX_CFG);
 mdelay(1);
 ocelot_port_writel(port, DEV_MAC_HDX_CFG_LATE_COL_POS(67),
      DEV_MAC_HDX_CFG);


 ocelot_port_writel(port, DEV_PORT_MISC_HDX_FAST_DIS, DEV_PORT_MISC);


 ocelot_port_writel(port, PCS1G_MODE_CFG_SGMII_MODE_ENA, PCS1G_MODE_CFG);
 ocelot_port_writel(port, PCS1G_SD_CFG_SD_SEL, PCS1G_SD_CFG);


 ocelot_port_writel(port, PCS1G_CFG_PCS_ENA, PCS1G_CFG);


 ocelot_port_writel(port, 0, PCS1G_ANEG_CFG);


 ocelot_port_writel(port, 0, PCS1G_LB_CFG);


 ocelot_port_writel(port, VLAN_ETH_FRAME_LEN, DEV_MAC_MAXLEN_CFG);
 ocelot_port_writel(port, DEV_MAC_TAGS_CFG_TAG_ID(ETH_P_8021AD) |
      DEV_MAC_TAGS_CFG_VLAN_AWR_ENA |
      DEV_MAC_TAGS_CFG_VLAN_LEN_AWR_ENA,
      DEV_MAC_TAGS_CFG);


 ocelot_port_writel(port, DEV_MAC_ENA_CFG_RX_ENA |
      DEV_MAC_ENA_CFG_TX_ENA, DEV_MAC_ENA_CFG);



 ocelot_port_writel(port, DEV_CLOCK_CFG_LINK_SPEED(speed),
      DEV_CLOCK_CFG);


 ocelot_port_writel(port, 0, DEV_MAC_FC_MAC_HIGH_CFG);
 ocelot_port_writel(port, 0, DEV_MAC_FC_MAC_LOW_CFG);


 ocelot_write_gix(ocelot, ANA_PFC_PFC_CFG_FC_LINK_SPEED(speed),
    ANA_PFC_PFC_CFG, p);





 ocelot_write_rix(ocelot, SYS_PAUSE_CFG_PAUSE_ENA |
    SYS_PAUSE_CFG_PAUSE_STOP(101) |
    SYS_PAUSE_CFG_PAUSE_START(152), SYS_PAUSE_CFG, p);


 ocelot_write_rix(ocelot, QSYS_SWITCH_PORT_MODE_INGRESS_DROP_MODE |
    QSYS_SWITCH_PORT_MODE_SCH_NEXT_CFG(1) |
    QSYS_SWITCH_PORT_MODE_PORT_ENA,
    QSYS_SWITCH_PORT_MODE, p);


 ocelot_write_rix(ocelot, SYS_MAC_FC_CFG_PAUSE_VAL_CFG(0xffff) |
    SYS_MAC_FC_CFG_RX_FC_ENA | SYS_MAC_FC_CFG_TX_FC_ENA |
    SYS_MAC_FC_CFG_ZERO_PAUSE_ENA |
    SYS_MAC_FC_CFG_FC_LATENCY_CFG(0x7) |
    SYS_MAC_FC_CFG_FC_LINK_SPEED(speed),
    SYS_MAC_FC_CFG, p);
 ocelot_write_rix(ocelot, 0, ANA_POL_FLOWC, p);


 atop_wm = (ocelot->shared_queue_sz - 9 * VLAN_ETH_FRAME_LEN) / OCELOT_BUFFER_CELL_SZ;
 ocelot_write_rix(ocelot, ocelot_wm_enc(9 * VLAN_ETH_FRAME_LEN),
    SYS_ATOP, p);
 ocelot_write(ocelot, ocelot_wm_enc(atop_wm), SYS_ATOP_TOT_CFG);
}
