
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_trans {int dummy; } ;
struct rocker_port {struct ofdpa_port* wpriv; } ;
struct ofdpa_port {unsigned long brport_flags; int rocker_port; } ;


 unsigned long BR_LEARNING ;
 int rocker_port_set_learning (int ,int) ;
 scalar_t__ switchdev_trans_ph_prepare (struct switchdev_trans*) ;

__attribute__((used)) static int ofdpa_port_attr_bridge_flags_set(struct rocker_port *rocker_port,
         unsigned long brport_flags,
         struct switchdev_trans *trans)
{
 struct ofdpa_port *ofdpa_port = rocker_port->wpriv;
 unsigned long orig_flags;
 int err = 0;

 orig_flags = ofdpa_port->brport_flags;
 ofdpa_port->brport_flags = brport_flags;
 if ((orig_flags ^ ofdpa_port->brport_flags) & BR_LEARNING &&
     !switchdev_trans_ph_prepare(trans))
  err = rocker_port_set_learning(ofdpa_port->rocker_port,
            !!(ofdpa_port->brport_flags & BR_LEARNING));

 if (switchdev_trans_ph_prepare(trans))
  ofdpa_port->brport_flags = orig_flags;

 return err;
}
