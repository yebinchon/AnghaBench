
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct ocelot_port {int pvid; struct ocelot* ocelot; } ;
struct ocelot {int dummy; } ;
struct net_device {int dev_addr; } ;


 int ENTRYTYPE_LOCKED ;
 int PGID_CPU ;
 int ether_addr_copy (int ,int ) ;
 struct ocelot_port* netdev_priv (struct net_device*) ;
 int ocelot_mact_forget (struct ocelot*,int ,int ) ;
 int ocelot_mact_learn (struct ocelot*,int ,int ,int ,int ) ;

__attribute__((used)) static int ocelot_port_set_mac_address(struct net_device *dev, void *p)
{
 struct ocelot_port *port = netdev_priv(dev);
 struct ocelot *ocelot = port->ocelot;
 const struct sockaddr *addr = p;


 ocelot_mact_learn(ocelot, PGID_CPU, addr->sa_data, port->pvid,
     ENTRYTYPE_LOCKED);

 ocelot_mact_forget(ocelot, dev->dev_addr, port->pvid);

 ether_addr_copy(dev->dev_addr, addr->sa_data);
 return 0;
}
