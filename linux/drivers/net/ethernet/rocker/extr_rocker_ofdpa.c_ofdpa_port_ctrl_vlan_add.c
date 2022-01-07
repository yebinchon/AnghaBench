
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofdpa_port {scalar_t__* ctrls; } ;
typedef int __be16 ;


 int OFDPA_CTRL_MAX ;
 int * ofdpa_ctrls ;
 int ofdpa_port_ctrl_vlan (struct ofdpa_port*,int,int *,int ) ;

__attribute__((used)) static int ofdpa_port_ctrl_vlan_add(struct ofdpa_port *ofdpa_port, int flags,
        __be16 vlan_id)
{
 int err = 0;
 int i;

 for (i = 0; i < OFDPA_CTRL_MAX; i++) {
  if (ofdpa_port->ctrls[i]) {
   err = ofdpa_port_ctrl_vlan(ofdpa_port, flags,
         &ofdpa_ctrls[i], vlan_id);
   if (err)
    return err;
  }
 }

 return err;
}
