
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_buf_hdr {int dummy; } ;
struct ice_aqc_download_pkg_resp {int error_info; int error_offset; } ;
struct ice_aqc_download_pkg {int flags; } ;
struct TYPE_2__ {struct ice_aqc_download_pkg download_pkg; } ;
struct ice_aq_desc {int flags; TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_AQC_DOWNLOAD_PKG_LAST_BUF ;
 int ICE_AQ_FLAG_RD ;
 int ICE_ERR_AQ_ERROR ;
 int cpu_to_le16 (int ) ;
 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,struct ice_buf_hdr*,int ,struct ice_sq_cd*) ;
 int ice_aqc_opc_download_pkg ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static enum ice_status
ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
      u16 buf_size, bool last_buf, u32 *error_offset,
      u32 *error_info, struct ice_sq_cd *cd)
{
 struct ice_aqc_download_pkg *cmd;
 struct ice_aq_desc desc;
 enum ice_status status;

 if (error_offset)
  *error_offset = 0;
 if (error_info)
  *error_info = 0;

 cmd = &desc.params.download_pkg;
 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_download_pkg);
 desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);

 if (last_buf)
  cmd->flags |= ICE_AQC_DOWNLOAD_PKG_LAST_BUF;

 status = ice_aq_send_cmd(hw, &desc, pkg_buf, buf_size, cd);
 if (status == ICE_ERR_AQ_ERROR) {

  struct ice_aqc_download_pkg_resp *resp;

  resp = (struct ice_aqc_download_pkg_resp *)pkg_buf;
  if (error_offset)
   *error_offset = le32_to_cpu(resp->error_offset);
  if (error_info)
   *error_info = le32_to_cpu(resp->error_info);
 }

 return status;
}
