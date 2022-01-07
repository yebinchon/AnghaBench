
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocelot_port {struct ocelot* ocelot; } ;
struct ocelot {int num_phys_ports; } ;
struct net_device {int dummy; } ;


 int ANA_PGID_PGID ;
 int GENMASK (int,int ) ;
 int PGID_CPU ;
 int __dev_mc_sync (struct net_device*,int ,int ) ;
 struct ocelot_port* netdev_priv (struct net_device*) ;
 int ocelot_mc_sync ;
 int ocelot_mc_unsync ;
 int ocelot_write_rix (struct ocelot*,int ,int ,int) ;

__attribute__((used)) static void ocelot_set_rx_mode(struct net_device *dev)
{
 struct ocelot_port *port = netdev_priv(dev);
 struct ocelot *ocelot = port->ocelot;
 int i;
 u32 val;





 val = GENMASK(ocelot->num_phys_ports - 1, 0);
 for (i = ocelot->num_phys_ports + 1; i < PGID_CPU; i++)
  ocelot_write_rix(ocelot, val, ANA_PGID_PGID, i);

 __dev_mc_sync(dev, ocelot_mc_sync, ocelot_mc_unsync);
}
