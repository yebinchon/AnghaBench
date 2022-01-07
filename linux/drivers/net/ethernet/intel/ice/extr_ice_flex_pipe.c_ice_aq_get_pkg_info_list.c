
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_get_pkg_info_resp {int dummy; } ;
struct ice_aq_desc {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,struct ice_aqc_get_pkg_info_resp*,int ,struct ice_sq_cd*) ;
 int ice_aqc_opc_get_pkg_info_list ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;

__attribute__((used)) static enum ice_status
ice_aq_get_pkg_info_list(struct ice_hw *hw,
    struct ice_aqc_get_pkg_info_resp *pkg_info,
    u16 buf_size, struct ice_sq_cd *cd)
{
 struct ice_aq_desc desc;

 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_pkg_info_list);

 return ice_aq_send_cmd(hw, &desc, pkg_info, buf_size, cd);
}
