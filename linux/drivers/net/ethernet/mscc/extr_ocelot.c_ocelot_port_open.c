
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_port {int phy; int phy_mode; scalar_t__ serdes; int chip_port; struct ocelot* ocelot; } ;
struct ocelot {int dummy; } ;
struct net_device {int phydev; } ;


 int ANA_PORT_PORT_CFG ;
 int ANA_PORT_PORT_CFG_LEARNAUTO ;
 int ANA_PORT_PORT_CFG_PORTID_VAL (int ) ;
 int ANA_PORT_PORT_CFG_RECV_ENA ;
 int PHY_MODE_ETHERNET ;
 int netdev_err (struct net_device*,char*) ;
 struct ocelot_port* netdev_priv (struct net_device*) ;
 int ocelot_port_adjust_link ;
 int ocelot_write_gix (struct ocelot*,int,int ,int ) ;
 int phy_attached_info (int ) ;
 int phy_connect_direct (struct net_device*,int ,int *,int ) ;
 int phy_set_mode_ext (scalar_t__,int ,int ) ;
 int phy_start (int ) ;

__attribute__((used)) static int ocelot_port_open(struct net_device *dev)
{
 struct ocelot_port *port = netdev_priv(dev);
 struct ocelot *ocelot = port->ocelot;
 int err;




 ocelot_write_gix(ocelot, ANA_PORT_PORT_CFG_LEARNAUTO |
    ANA_PORT_PORT_CFG_RECV_ENA |
    ANA_PORT_PORT_CFG_PORTID_VAL(port->chip_port),
    ANA_PORT_PORT_CFG, port->chip_port);

 if (port->serdes) {
  err = phy_set_mode_ext(port->serdes, PHY_MODE_ETHERNET,
           port->phy_mode);
  if (err) {
   netdev_err(dev, "Could not set mode of SerDes\n");
   return err;
  }
 }

 err = phy_connect_direct(dev, port->phy, &ocelot_port_adjust_link,
     port->phy_mode);
 if (err) {
  netdev_err(dev, "Could not attach to PHY\n");
  return err;
 }

 dev->phydev = port->phy;

 phy_attached_info(port->phy);
 phy_start(port->phy);
 return 0;
}
