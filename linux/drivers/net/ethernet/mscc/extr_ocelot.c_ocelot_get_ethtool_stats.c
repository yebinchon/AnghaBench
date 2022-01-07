
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocelot_port {int chip_port; struct ocelot* ocelot; } ;
struct ocelot {int num_stats; int * stats; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 struct ocelot_port* netdev_priv (struct net_device*) ;
 int ocelot_update_stats (struct ocelot*) ;

__attribute__((used)) static void ocelot_get_ethtool_stats(struct net_device *dev,
         struct ethtool_stats *stats, u64 *data)
{
 struct ocelot_port *port = netdev_priv(dev);
 struct ocelot *ocelot = port->ocelot;
 int i;


 ocelot_update_stats(ocelot);


 for (i = 0; i < ocelot->num_stats; i++)
  *data++ = ocelot->stats[port->chip_port * ocelot->num_stats + i];
}
