
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_port {struct ofdpa_port* wpriv; } ;
struct ofdpa_port {int brport_flags; TYPE_1__* dev; int internal_vlan_id; } ;
struct TYPE_2__ {int ifindex; } ;


 int BR_LEARNING ;
 int OFDPA_OP_FLAG_REMOVE ;
 int OFDPA_UNTAGGED_VID ;
 int netdev_err (TYPE_1__*,char*) ;
 int ofdpa_port_ig_tbl (struct ofdpa_port*,int ) ;
 int ofdpa_port_internal_vlan_id_get (struct ofdpa_port*,int ) ;
 int ofdpa_port_vlan_add (struct ofdpa_port*,int ,int ) ;
 int rocker_port_set_learning (struct rocker_port*,int) ;

__attribute__((used)) static int ofdpa_port_init(struct rocker_port *rocker_port)
{
 struct ofdpa_port *ofdpa_port = rocker_port->wpriv;
 int err;

 rocker_port_set_learning(rocker_port,
     !!(ofdpa_port->brport_flags & BR_LEARNING));

 err = ofdpa_port_ig_tbl(ofdpa_port, 0);
 if (err) {
  netdev_err(ofdpa_port->dev, "install ig port table failed\n");
  return err;
 }

 ofdpa_port->internal_vlan_id =
  ofdpa_port_internal_vlan_id_get(ofdpa_port,
      ofdpa_port->dev->ifindex);

 err = ofdpa_port_vlan_add(ofdpa_port, OFDPA_UNTAGGED_VID, 0);
 if (err) {
  netdev_err(ofdpa_port->dev, "install untagged VLAN failed\n");
  goto err_untagged_vlan;
 }
 return 0;

err_untagged_vlan:
 ofdpa_port_ig_tbl(ofdpa_port, OFDPA_OP_FLAG_REMOVE);
 return err;
}
