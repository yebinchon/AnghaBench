
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ocelot_port {int chip_port; int pvid; int vlan_aware; struct ocelot* ocelot; } ;
struct ocelot {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct ndmsg {int dummy; } ;


 int EINVAL ;
 int ENTRYTYPE_LOCKED ;
 struct ocelot_port* netdev_priv (struct net_device*) ;
 int ocelot_mact_learn (struct ocelot*,int ,unsigned char const*,int ,int ) ;

__attribute__((used)) static int ocelot_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
     struct net_device *dev, const unsigned char *addr,
     u16 vid, u16 flags,
     struct netlink_ext_ack *extack)
{
 struct ocelot_port *port = netdev_priv(dev);
 struct ocelot *ocelot = port->ocelot;

 if (!vid) {
  if (!port->vlan_aware)




   vid = port->pvid;
  else



   return -EINVAL;
 }

 return ocelot_mact_learn(ocelot, port->chip_port, addr, vid,
     ENTRYTYPE_LOCKED);
}
