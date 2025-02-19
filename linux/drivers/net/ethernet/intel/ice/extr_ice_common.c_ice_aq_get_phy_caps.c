
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ice_sq_cd {int dummy; } ;
struct TYPE_4__ {void* phy_type_high; void* phy_type_low; } ;
struct ice_port_info {TYPE_2__ phy; int hw; } ;
struct ice_aqc_get_phy_caps_data {int phy_type_high; int phy_type_low; } ;
struct ice_aqc_get_phy_caps {int param0; } ;
struct TYPE_3__ {struct ice_aqc_get_phy_caps get_phy; } ;
struct ice_aq_desc {TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_AQC_GET_PHY_RQM ;
 int ICE_AQC_REPORT_MODE_M ;
 int ICE_AQC_REPORT_TOPO_CAP ;
 int ICE_ERR_PARAM ;
 int cpu_to_le16 (int) ;
 int ice_aq_send_cmd (int ,struct ice_aq_desc*,struct ice_aqc_get_phy_caps_data*,int,struct ice_sq_cd*) ;
 int ice_aqc_opc_get_phy_caps ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;
 void* le64_to_cpu (int ) ;

enum ice_status
ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
      struct ice_aqc_get_phy_caps_data *pcaps,
      struct ice_sq_cd *cd)
{
 struct ice_aqc_get_phy_caps *cmd;
 u16 pcaps_size = sizeof(*pcaps);
 struct ice_aq_desc desc;
 enum ice_status status;

 cmd = &desc.params.get_phy;

 if (!pcaps || (report_mode & ~ICE_AQC_REPORT_MODE_M) || !pi)
  return ICE_ERR_PARAM;

 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_phy_caps);

 if (qual_mods)
  cmd->param0 |= cpu_to_le16(ICE_AQC_GET_PHY_RQM);

 cmd->param0 |= cpu_to_le16(report_mode);
 status = ice_aq_send_cmd(pi->hw, &desc, pcaps, pcaps_size, cd);

 if (!status && report_mode == ICE_AQC_REPORT_TOPO_CAP) {
  pi->phy.phy_type_low = le64_to_cpu(pcaps->phy_type_low);
  pi->phy.phy_type_high = le64_to_cpu(pcaps->phy_type_high);
 }

 return status;
}
