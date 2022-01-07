
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_get_sw_cfg_resp {int dummy; } ;
struct ice_aqc_get_sw_cfg {int num_elems; int element; } ;
struct TYPE_2__ {struct ice_aqc_get_sw_cfg get_sw_conf; } ;
struct ice_aq_desc {TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int cpu_to_le16 (int ) ;
 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,struct ice_aqc_get_sw_cfg_resp*,int ,struct ice_sq_cd*) ;
 int ice_aqc_opc_get_sw_cfg ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static enum ice_status
ice_aq_get_sw_cfg(struct ice_hw *hw, struct ice_aqc_get_sw_cfg_resp *buf,
    u16 buf_size, u16 *req_desc, u16 *num_elems,
    struct ice_sq_cd *cd)
{
 struct ice_aqc_get_sw_cfg *cmd;
 enum ice_status status;
 struct ice_aq_desc desc;

 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_sw_cfg);
 cmd = &desc.params.get_sw_conf;
 cmd->element = cpu_to_le16(*req_desc);

 status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
 if (!status) {
  *req_desc = le16_to_cpu(cmd->element);
  *num_elems = le16_to_cpu(cmd->num_elems);
 }

 return status;
}
