
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_sq_cd {int dummy; } ;
struct ice_port_info {int hw; int lport; } ;
struct ice_aqc_restart_an {int cmd_flags; int lport_num; } ;
struct TYPE_2__ {struct ice_aqc_restart_an restart_an; } ;
struct ice_aq_desc {TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_AQC_RESTART_AN_LINK_ENABLE ;
 int ICE_AQC_RESTART_AN_LINK_RESTART ;
 int ice_aq_send_cmd (int ,struct ice_aq_desc*,int *,int ,struct ice_sq_cd*) ;
 int ice_aqc_opc_restart_an ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;

enum ice_status
ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
      struct ice_sq_cd *cd)
{
 struct ice_aqc_restart_an *cmd;
 struct ice_aq_desc desc;

 cmd = &desc.params.restart_an;

 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_restart_an);

 cmd->cmd_flags = ICE_AQC_RESTART_AN_LINK_RESTART;
 cmd->lport_num = pi->lport;
 if (ena_link)
  cmd->cmd_flags |= ICE_AQC_RESTART_AN_LINK_ENABLE;
 else
  cmd->cmd_flags &= ~ICE_AQC_RESTART_AN_LINK_ENABLE;

 return ice_aq_send_cmd(pi->hw, &desc, ((void*)0), 0, cd);
}
