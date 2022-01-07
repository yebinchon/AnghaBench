
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ocelot_port {struct ocelot* ocelot; } ;
struct ocelot {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct ndmsg {int dummy; } ;


 struct ocelot_port* netdev_priv (struct net_device*) ;
 int ocelot_mact_forget (struct ocelot*,unsigned char const*,int ) ;

__attribute__((used)) static int ocelot_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
     struct net_device *dev,
     const unsigned char *addr, u16 vid)
{
 struct ocelot_port *port = netdev_priv(dev);
 struct ocelot *ocelot = port->ocelot;

 return ocelot_mact_forget(ocelot, addr, vid);
}
