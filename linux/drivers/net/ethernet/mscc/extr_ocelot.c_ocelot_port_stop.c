
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_port {int chip_port; int ocelot; int phy; } ;
struct net_device {int * phydev; } ;


 int DEV_MAC_ENA_CFG ;
 int QSYS_SWITCH_PORT_MODE ;
 int QSYS_SWITCH_PORT_MODE_PORT_ENA ;
 struct ocelot_port* netdev_priv (struct net_device*) ;
 int ocelot_port_writel (struct ocelot_port*,int ,int ) ;
 int ocelot_rmw_rix (int ,int ,int ,int ,int ) ;
 int phy_disconnect (int ) ;

__attribute__((used)) static int ocelot_port_stop(struct net_device *dev)
{
 struct ocelot_port *port = netdev_priv(dev);

 phy_disconnect(port->phy);

 dev->phydev = ((void*)0);

 ocelot_port_writel(port, 0, DEV_MAC_ENA_CFG);
 ocelot_rmw_rix(port->ocelot, 0, QSYS_SWITCH_PORT_MODE_PORT_ENA,
    QSYS_SWITCH_PORT_MODE, port->chip_port);
 return 0;
}
