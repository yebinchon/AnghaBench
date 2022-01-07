
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ice_sq_cd {int dummy; } ;
struct TYPE_3__ {scalar_t__ sq_last_status; } ;
struct ice_hw {TYPE_1__ adminq; } ;
struct ice_aqc_list_caps {int count; } ;
struct TYPE_4__ {struct ice_aqc_list_caps get_cap; } ;
struct ice_aq_desc {TYPE_2__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef enum ice_adminq_opc { ____Placeholder_ice_adminq_opc } ice_adminq_opc ;


 scalar_t__ ICE_AQ_RC_ENOMEM ;
 int ICE_ERR_PARAM ;
 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,void*,int ,struct ice_sq_cd*) ;
 int ice_aqc_opc_list_dev_caps ;
 int ice_aqc_opc_list_func_caps ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int) ;
 int ice_parse_caps (struct ice_hw*,void*,int ,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static enum ice_status
ice_aq_discover_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
       enum ice_adminq_opc opc, struct ice_sq_cd *cd)
{
 struct ice_aqc_list_caps *cmd;
 struct ice_aq_desc desc;
 enum ice_status status;

 cmd = &desc.params.get_cap;

 if (opc != ice_aqc_opc_list_func_caps &&
     opc != ice_aqc_opc_list_dev_caps)
  return ICE_ERR_PARAM;

 ice_fill_dflt_direct_cmd_desc(&desc, opc);

 status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
 if (!status)
  ice_parse_caps(hw, buf, le32_to_cpu(cmd->count), opc);
 else if (hw->adminq.sq_last_status == ICE_AQ_RC_ENOMEM)
  *cap_count = le32_to_cpu(cmd->count);
 return status;
}
