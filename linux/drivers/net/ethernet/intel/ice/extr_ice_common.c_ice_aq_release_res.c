
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_req_res {int res_number; int res_id; } ;
struct TYPE_2__ {struct ice_aqc_req_res res_owner; } ;
struct ice_aq_desc {TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef enum ice_aq_res_ids { ____Placeholder_ice_aq_res_ids } ice_aq_res_ids ;


 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,int *,int ,struct ice_sq_cd*) ;
 int ice_aqc_opc_release_res ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;

__attribute__((used)) static enum ice_status
ice_aq_release_res(struct ice_hw *hw, enum ice_aq_res_ids res, u8 sdp_number,
     struct ice_sq_cd *cd)
{
 struct ice_aqc_req_res *cmd;
 struct ice_aq_desc desc;

 cmd = &desc.params.res_owner;

 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_release_res);

 cmd->res_id = cpu_to_le16(res);
 cmd->res_number = cpu_to_le32(sdp_number);

 return ice_aq_send_cmd(hw, &desc, ((void*)0), 0, cd);
}
