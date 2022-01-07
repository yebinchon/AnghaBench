
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ocelot_port {size_t pvid; size_t vid; int chip_port; struct ocelot* ocelot; } ;
struct ocelot {int dev; int * vlan_mask; } ;
struct net_device {int dev_addr; } ;


 int BIT (int ) ;
 int EBUSY ;
 int ENTRYTYPE_LOCKED ;
 int PGID_CPU ;
 int dev_err (int ,char*,size_t) ;
 struct ocelot_port* netdev_priv (struct net_device*) ;
 int ocelot_mact_learn (struct ocelot*,int ,int ,size_t,int ) ;
 int ocelot_vlan_port_apply (struct ocelot*,struct ocelot_port*) ;
 int ocelot_vlant_set_mask (struct ocelot*,size_t,int ) ;

__attribute__((used)) static int ocelot_vlan_vid_add(struct net_device *dev, u16 vid, bool pvid,
          bool untagged)
{
 struct ocelot_port *port = netdev_priv(dev);
 struct ocelot *ocelot = port->ocelot;
 int ret;


 ocelot_mact_learn(ocelot, PGID_CPU, dev->dev_addr, vid,
     ENTRYTYPE_LOCKED);


 ocelot->vlan_mask[vid] |= BIT(port->chip_port);
 ret = ocelot_vlant_set_mask(ocelot, vid, ocelot->vlan_mask[vid]);
 if (ret)
  return ret;


 if (pvid)
  port->pvid = vid;


 if (untagged && port->vid != vid) {
  if (port->vid) {
   dev_err(ocelot->dev,
    "Port already has a native VLAN: %d\n",
    port->vid);
   return -EBUSY;
  }
  port->vid = vid;
 }

 ocelot_vlan_port_apply(ocelot, port);

 return 0;
}
