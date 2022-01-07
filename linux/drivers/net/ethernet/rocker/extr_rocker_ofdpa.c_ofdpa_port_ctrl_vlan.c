
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofdpa_port {int dummy; } ;
struct ofdpa_ctrl {scalar_t__ term; scalar_t__ bridge; scalar_t__ acl; } ;
typedef int __be16 ;


 int EOPNOTSUPP ;
 int ofdpa_port_ctrl_vlan_acl (struct ofdpa_port*,int,struct ofdpa_ctrl const*,int ) ;
 int ofdpa_port_ctrl_vlan_bridge (struct ofdpa_port*,int,struct ofdpa_ctrl const*,int ) ;
 int ofdpa_port_ctrl_vlan_term (struct ofdpa_port*,int,struct ofdpa_ctrl const*,int ) ;

__attribute__((used)) static int ofdpa_port_ctrl_vlan(struct ofdpa_port *ofdpa_port, int flags,
    const struct ofdpa_ctrl *ctrl, __be16 vlan_id)
{
 if (ctrl->acl)
  return ofdpa_port_ctrl_vlan_acl(ofdpa_port, flags,
      ctrl, vlan_id);
 if (ctrl->bridge)
  return ofdpa_port_ctrl_vlan_bridge(ofdpa_port, flags,
         ctrl, vlan_id);

 if (ctrl->term)
  return ofdpa_port_ctrl_vlan_term(ofdpa_port, flags,
       ctrl, vlan_id);

 return -EOPNOTSUPP;
}
