
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct phy_device {int speed; int link; scalar_t__ interface; int duplex; scalar_t__ asym_pause; scalar_t__ pause; } ;
struct ethtool_eee {int eee_enabled; } ;
struct dsa_switch {int dev; struct b53_device* priv; } ;
struct b53_device {int cpu_port; TYPE_1__* ports; } ;
struct TYPE_2__ {struct ethtool_eee eee; } ;


 int B53_CTRL_PAGE ;
 int B53_PORT_OVERRIDE_CTRL ;
 int B53_RGMII_CTRL_IMP ;
 int B53_RGMII_CTRL_P (int) ;
 int DUPLEX_FULL ;
 int MLO_PAUSE_RX ;
 int MLO_PAUSE_TX ;
 int MLO_PAUSE_TXRX_MASK ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_TXID ;
 int PORT_OVERRIDE_RV_MII_25 ;
 int RGMII_CTRL_DLL_RXC ;
 int RGMII_CTRL_DLL_TXC ;
 int RGMII_CTRL_TIMING_SEL ;
 int b53_eee_init (struct dsa_switch*,int,struct phy_device*) ;
 int b53_force_link (struct b53_device*,int,int) ;
 int b53_force_port_config (struct b53_device*,int,int,int ,int) ;
 int b53_read8 (struct b53_device*,int ,int,int*) ;
 int b53_write8 (struct b53_device*,int ,int,int) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int,int ) ;
 scalar_t__ is5301x (struct b53_device*) ;
 scalar_t__ is531x5 (struct b53_device*) ;
 scalar_t__ is5325 (struct b53_device*) ;
 scalar_t__ phy_interface_is_rgmii (struct phy_device*) ;
 int phy_is_pseudo_fixed_link (struct phy_device*) ;
 int phy_modes (scalar_t__) ;

__attribute__((used)) static void b53_adjust_link(struct dsa_switch *ds, int port,
       struct phy_device *phydev)
{
 struct b53_device *dev = ds->priv;
 struct ethtool_eee *p = &dev->ports[port].eee;
 u8 rgmii_ctrl = 0, reg = 0, off;
 int pause = 0;

 if (!phy_is_pseudo_fixed_link(phydev))
  return;


 if (is5301x(dev) && port == dev->cpu_port)
  pause = MLO_PAUSE_TXRX_MASK;

 if (phydev->pause) {
  if (phydev->asym_pause)
   pause |= MLO_PAUSE_TX;
  pause |= MLO_PAUSE_RX;
 }

 b53_force_port_config(dev, port, phydev->speed, phydev->duplex, pause);
 b53_force_link(dev, port, phydev->link);

 if (is531x5(dev) && phy_interface_is_rgmii(phydev)) {
  if (port == 8)
   off = B53_RGMII_CTRL_IMP;
  else
   off = B53_RGMII_CTRL_P(port);




  b53_read8(dev, B53_CTRL_PAGE, off, &rgmii_ctrl);
  rgmii_ctrl &= ~(RGMII_CTRL_DLL_RXC | RGMII_CTRL_DLL_TXC |
    RGMII_CTRL_TIMING_SEL);
  if (phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID)
   rgmii_ctrl |= RGMII_CTRL_DLL_TXC;
  if (phydev->interface == PHY_INTERFACE_MODE_RGMII)
   rgmii_ctrl |= RGMII_CTRL_DLL_TXC | RGMII_CTRL_DLL_RXC;
  rgmii_ctrl |= RGMII_CTRL_TIMING_SEL;
  b53_write8(dev, B53_CTRL_PAGE, off, rgmii_ctrl);

  dev_info(ds->dev, "Configured port %d for %s\n", port,
    phy_modes(phydev->interface));
 }


 if (is5325(dev)) {
  b53_read8(dev, B53_CTRL_PAGE, B53_PORT_OVERRIDE_CTRL,
     &reg);


  if (!(reg & PORT_OVERRIDE_RV_MII_25)) {
   b53_write8(dev, B53_CTRL_PAGE, B53_PORT_OVERRIDE_CTRL,
       reg | PORT_OVERRIDE_RV_MII_25);
   b53_read8(dev, B53_CTRL_PAGE, B53_PORT_OVERRIDE_CTRL,
      &reg);

   if (!(reg & PORT_OVERRIDE_RV_MII_25)) {
    dev_err(ds->dev,
     "Failed to enable reverse MII mode\n");
    return;
   }
  }
 } else if (is5301x(dev)) {
  if (port != dev->cpu_port) {
   b53_force_port_config(dev, dev->cpu_port, 2000,
           DUPLEX_FULL, MLO_PAUSE_TXRX_MASK);
   b53_force_link(dev, dev->cpu_port, 1);
  }
 }


 p->eee_enabled = b53_eee_init(ds, port, phydev);
}
