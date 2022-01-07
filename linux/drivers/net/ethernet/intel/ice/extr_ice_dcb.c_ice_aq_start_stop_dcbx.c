
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_lldp_stop_start_specific_agent {scalar_t__ command; } ;
struct TYPE_2__ {struct ice_aqc_lldp_stop_start_specific_agent lldp_agent_ctrl; } ;
struct ice_aq_desc {TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 scalar_t__ ICE_AQC_START_STOP_AGENT_START_DCBX ;
 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,int *,int ,struct ice_sq_cd*) ;
 int ice_aqc_opc_lldp_stop_start_specific_agent ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;

enum ice_status
ice_aq_start_stop_dcbx(struct ice_hw *hw, bool start_dcbx_agent,
         bool *dcbx_agent_status, struct ice_sq_cd *cd)
{
 struct ice_aqc_lldp_stop_start_specific_agent *cmd;
 enum ice_status status;
 struct ice_aq_desc desc;
 u16 opcode;

 cmd = &desc.params.lldp_agent_ctrl;

 opcode = ice_aqc_opc_lldp_stop_start_specific_agent;

 ice_fill_dflt_direct_cmd_desc(&desc, opcode);

 if (start_dcbx_agent)
  cmd->command = ICE_AQC_START_STOP_AGENT_START_DCBX;

 status = ice_aq_send_cmd(hw, &desc, ((void*)0), 0, cd);

 *dcbx_agent_status = 0;

 if (!status &&
     cmd->command == ICE_AQC_START_STOP_AGENT_START_DCBX)
  *dcbx_agent_status = 1;

 return status;
}
