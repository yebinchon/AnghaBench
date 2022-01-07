
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_port {int chip_port; struct ocelot* ocelot; } ;
struct ocelot {int bridge_mask; struct net_device* hw_bridge_dev; } ;
struct net_device {int dummy; } ;


 int BIT (int ) ;
 int ENODEV ;

__attribute__((used)) static int ocelot_port_bridge_join(struct ocelot_port *ocelot_port,
       struct net_device *bridge)
{
 struct ocelot *ocelot = ocelot_port->ocelot;

 if (!ocelot->bridge_mask) {
  ocelot->hw_bridge_dev = bridge;
 } else {
  if (ocelot->hw_bridge_dev != bridge)


   return -ENODEV;
 }

 ocelot->bridge_mask |= BIT(ocelot_port->chip_port);

 return 0;
}
