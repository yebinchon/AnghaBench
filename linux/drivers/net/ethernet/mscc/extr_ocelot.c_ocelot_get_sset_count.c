
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_port {struct ocelot* ocelot; } ;
struct ocelot {int num_stats; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;
 int ETH_SS_STATS ;
 struct ocelot_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ocelot_get_sset_count(struct net_device *dev, int sset)
{
 struct ocelot_port *port = netdev_priv(dev);
 struct ocelot *ocelot = port->ocelot;

 if (sset != ETH_SS_STATS)
  return -EOPNOTSUPP;
 return ocelot->num_stats;
}
