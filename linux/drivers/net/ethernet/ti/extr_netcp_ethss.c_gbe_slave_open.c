
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gbe_slave {int port_num; scalar_t__ link_interface; scalar_t__ slave_num; int phy; int phy_node; void* phy_port_t; int node; } ;
struct gbe_priv {int dev; int ale; int rx_packet_max; } ;
struct gbe_intf {TYPE_1__* ndev; struct gbe_slave* slave; struct gbe_priv* gbe_dev; } ;
typedef scalar_t__ phy_interface_t ;
struct TYPE_2__ {int broadcast; } ;


 int ALE_MCAST_FWD_2 ;
 int ALE_PORT_STATE ;
 int ALE_PORT_STATE_FORWARD ;
 int EINVAL ;
 int ENODEV ;
 int GBE_REG_ADDR (struct gbe_slave*,int ,int ) ;
 int HOST_TX_PRI_MAP_DEFAULT ;
 int IS_SS_ID_2U (struct gbe_priv*) ;
 scalar_t__ IS_SS_ID_MU (struct gbe_priv*) ;
 scalar_t__ IS_SS_ID_XGBE (struct gbe_priv*) ;
 scalar_t__ PHY_INTERFACE_MODE_NA ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 void* PORT_FIBRE ;
 void* PORT_MII ;
 scalar_t__ RGMII_LINK_MAC_PHY ;
 scalar_t__ SGMII_LINK_MAC_PHY ;
 scalar_t__ XGMII_LINK_MAC_PHY ;
 int cpsw_ale_add_mcast (int ,int ,int,int ,int ,int ) ;
 int cpsw_ale_control_set (int ,int,int ,int ) ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,scalar_t__) ;
 void gbe_adjust_link (struct net_device*) ;
 int gbe_port_config (struct gbe_priv*,struct gbe_slave*,int ) ;
 int gbe_port_reset (struct gbe_slave*) ;
 int gbe_set_slave_mac (struct gbe_slave*,struct gbe_intf*) ;
 int gbe_sgmii_config (struct gbe_priv*,struct gbe_slave*) ;
 int gbe_sgmii_rtreset (struct gbe_priv*,struct gbe_slave*,int) ;
 scalar_t__ of_get_phy_mode (int ) ;
 int of_phy_connect (TYPE_1__*,int ,void (*) (struct net_device*),int ,scalar_t__) ;
 int phy_interface_mode_is_rgmii (scalar_t__) ;
 int phy_start (int ) ;
 int phydev_name (int ) ;
 int port_regs ;
 int rx_pri_map ;
 int writel (int ,int ) ;
 void xgbe_adjust_link (struct net_device*) ;

__attribute__((used)) static int gbe_slave_open(struct gbe_intf *gbe_intf)
{
 struct gbe_priv *priv = gbe_intf->gbe_dev;
 struct gbe_slave *slave = gbe_intf->slave;
 phy_interface_t phy_mode;
 bool has_phy = 0;

 void (*hndlr)(struct net_device *) = gbe_adjust_link;

 if (!IS_SS_ID_2U(priv))
  gbe_sgmii_config(priv, slave);
 gbe_port_reset(slave);
 if (!IS_SS_ID_2U(priv))
  gbe_sgmii_rtreset(priv, slave, 0);
 gbe_port_config(priv, slave, priv->rx_packet_max);
 gbe_set_slave_mac(slave, gbe_intf);



 if (IS_SS_ID_MU(priv))
  writel(HOST_TX_PRI_MAP_DEFAULT,
         GBE_REG_ADDR(slave, port_regs, rx_pri_map));


 cpsw_ale_control_set(priv->ale, slave->port_num,
        ALE_PORT_STATE, ALE_PORT_STATE_FORWARD);
 cpsw_ale_add_mcast(priv->ale, gbe_intf->ndev->broadcast,
      1 << slave->port_num, 0, 0, ALE_MCAST_FWD_2);

 if (slave->link_interface == SGMII_LINK_MAC_PHY) {
  has_phy = 1;
  phy_mode = PHY_INTERFACE_MODE_SGMII;
  slave->phy_port_t = PORT_MII;
 } else if (slave->link_interface == RGMII_LINK_MAC_PHY) {
  has_phy = 1;
  phy_mode = of_get_phy_mode(slave->node);



  if (phy_mode < 0)
   phy_mode = PHY_INTERFACE_MODE_RGMII;

  if (!phy_interface_mode_is_rgmii(phy_mode)) {
   dev_err(priv->dev,
    "Unsupported phy mode %d\n", phy_mode);
   return -EINVAL;
  }
  slave->phy_port_t = PORT_MII;
 } else if (slave->link_interface == XGMII_LINK_MAC_PHY) {
  has_phy = 1;
  phy_mode = PHY_INTERFACE_MODE_NA;
  slave->phy_port_t = PORT_FIBRE;
 }

 if (has_phy) {
  if (IS_SS_ID_XGBE(priv))
   hndlr = xgbe_adjust_link;

  slave->phy = of_phy_connect(gbe_intf->ndev,
         slave->phy_node,
         hndlr, 0,
         phy_mode);
  if (!slave->phy) {
   dev_err(priv->dev, "phy not found on slave %d\n",
    slave->slave_num);
   return -ENODEV;
  }
  dev_dbg(priv->dev, "phy found: id is: 0x%s\n",
   phydev_name(slave->phy));
  phy_start(slave->phy);
 }
 return 0;
}
