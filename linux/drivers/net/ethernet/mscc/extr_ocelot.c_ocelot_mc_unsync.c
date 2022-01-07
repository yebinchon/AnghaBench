
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_port {int pvid; int ocelot; } ;
struct net_device {int dummy; } ;


 struct ocelot_port* netdev_priv (struct net_device*) ;
 int ocelot_mact_forget (int ,unsigned char const*,int ) ;

__attribute__((used)) static int ocelot_mc_unsync(struct net_device *dev, const unsigned char *addr)
{
 struct ocelot_port *port = netdev_priv(dev);

 return ocelot_mact_forget(port->ocelot, addr, port->pvid);
}
