
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ofdpa_port {struct net_device* bridge_dev; int internal_vlan_id; TYPE_1__* dev; } ;
struct net_device {int ifindex; } ;
struct TYPE_2__ {int ifindex; } ;


 int OFDPA_UNTAGGED_VID ;
 int ofdpa_port_internal_vlan_id_get (struct ofdpa_port*,int ) ;
 int ofdpa_port_internal_vlan_id_put (struct ofdpa_port*,int ) ;
 int ofdpa_port_vlan_add (struct ofdpa_port*,int ,int ) ;
 int ofdpa_port_vlan_del (struct ofdpa_port*,int ,int ) ;

__attribute__((used)) static int ofdpa_port_bridge_join(struct ofdpa_port *ofdpa_port,
      struct net_device *bridge)
{
 int err;







 err = ofdpa_port_vlan_del(ofdpa_port, OFDPA_UNTAGGED_VID, 0);
 if (err)
  return err;

 ofdpa_port_internal_vlan_id_put(ofdpa_port,
     ofdpa_port->dev->ifindex);
 ofdpa_port->internal_vlan_id =
  ofdpa_port_internal_vlan_id_get(ofdpa_port, bridge->ifindex);

 ofdpa_port->bridge_dev = bridge;

 return ofdpa_port_vlan_add(ofdpa_port, OFDPA_UNTAGGED_VID, 0);
}
