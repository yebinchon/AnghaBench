
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchdev_trans {int dummy; } ;
struct TYPE_2__ {int mc_disabled; int vlan_filtering; int ageing_time; int stp_state; } ;
struct switchdev_attr {int id; TYPE_1__ u; } ;
struct ocelot_port {int ocelot; int vlan_aware; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;




 struct ocelot_port* netdev_priv (struct net_device*) ;
 int ocelot_port_attr_ageing_set (struct ocelot_port*,int ) ;
 int ocelot_port_attr_mc_set (struct ocelot_port*,int) ;
 int ocelot_port_attr_stp_state_set (struct ocelot_port*,struct switchdev_trans*,int ) ;
 int ocelot_vlan_port_apply (int ,struct ocelot_port*) ;

__attribute__((used)) static int ocelot_port_attr_set(struct net_device *dev,
    const struct switchdev_attr *attr,
    struct switchdev_trans *trans)
{
 struct ocelot_port *ocelot_port = netdev_priv(dev);
 int err = 0;

 switch (attr->id) {
 case 128:
  ocelot_port_attr_stp_state_set(ocelot_port, trans,
            attr->u.stp_state);
  break;
 case 131:
  ocelot_port_attr_ageing_set(ocelot_port, attr->u.ageing_time);
  break;
 case 129:
  ocelot_port->vlan_aware = attr->u.vlan_filtering;
  ocelot_vlan_port_apply(ocelot_port->ocelot, ocelot_port);
  break;
 case 130:
  ocelot_port_attr_mc_set(ocelot_port, !attr->u.mc_disabled);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 return err;
}
