
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_lldp_stop {int command; } ;
struct TYPE_2__ {struct ice_aqc_lldp_stop lldp_stop; } ;
struct ice_aq_desc {TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_AQ_LLDP_AGENT_PERSIST_DIS ;
 int ICE_AQ_LLDP_AGENT_SHUTDOWN ;
 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,int *,int ,struct ice_sq_cd*) ;
 int ice_aqc_opc_lldp_stop ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;

enum ice_status
ice_aq_stop_lldp(struct ice_hw *hw, bool shutdown_lldp_agent, bool persist,
   struct ice_sq_cd *cd)
{
 struct ice_aqc_lldp_stop *cmd;
 struct ice_aq_desc desc;

 cmd = &desc.params.lldp_stop;

 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_stop);

 if (shutdown_lldp_agent)
  cmd->command |= ICE_AQ_LLDP_AGENT_SHUTDOWN;

 if (persist)
  cmd->command |= ICE_AQ_LLDP_AGENT_PERSIST_DIS;

 return ice_aq_send_cmd(hw, &desc, ((void*)0), 0, cd);
}
