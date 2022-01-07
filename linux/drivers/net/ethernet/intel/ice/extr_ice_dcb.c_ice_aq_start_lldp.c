
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_lldp_start {int command; } ;
struct TYPE_2__ {struct ice_aqc_lldp_start lldp_start; } ;
struct ice_aq_desc {TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_AQ_LLDP_AGENT_PERSIST_ENA ;
 int ICE_AQ_LLDP_AGENT_START ;
 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,int *,int ,struct ice_sq_cd*) ;
 int ice_aqc_opc_lldp_start ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;

enum ice_status
ice_aq_start_lldp(struct ice_hw *hw, bool persist, struct ice_sq_cd *cd)
{
 struct ice_aqc_lldp_start *cmd;
 struct ice_aq_desc desc;

 cmd = &desc.params.lldp_start;

 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_start);

 cmd->command = ICE_AQ_LLDP_AGENT_START;

 if (persist)
  cmd->command |= ICE_AQ_LLDP_AGENT_PERSIST_ENA;

 return ice_aq_send_cmd(hw, &desc, ((void*)0), 0, cd);
}
