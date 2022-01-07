
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_sq_cd {int dummy; } ;
struct ice_hw {int api_patch; int api_min_ver; int api_maj_ver; int api_branch; int fw_build; int fw_patch; int fw_min_ver; int fw_maj_ver; int fw_branch; } ;
struct ice_aqc_get_ver {int api_patch; int api_minor; int api_major; int api_branch; int fw_build; int fw_patch; int fw_minor; int fw_major; int fw_branch; } ;
struct TYPE_2__ {struct ice_aqc_get_ver get_ver; } ;
struct ice_aq_desc {TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,int *,int ,struct ice_sq_cd*) ;
 int ice_aqc_opc_get_ver ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;
 int le32_to_cpu (int ) ;

enum ice_status ice_aq_get_fw_ver(struct ice_hw *hw, struct ice_sq_cd *cd)
{
 struct ice_aqc_get_ver *resp;
 struct ice_aq_desc desc;
 enum ice_status status;

 resp = &desc.params.get_ver;

 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_ver);

 status = ice_aq_send_cmd(hw, &desc, ((void*)0), 0, cd);

 if (!status) {
  hw->fw_branch = resp->fw_branch;
  hw->fw_maj_ver = resp->fw_major;
  hw->fw_min_ver = resp->fw_minor;
  hw->fw_patch = resp->fw_patch;
  hw->fw_build = le32_to_cpu(resp->fw_build);
  hw->api_branch = resp->api_branch;
  hw->api_maj_ver = resp->api_major;
  hw->api_min_ver = resp->api_minor;
  hw->api_patch = resp->api_patch;
 }

 return status;
}
