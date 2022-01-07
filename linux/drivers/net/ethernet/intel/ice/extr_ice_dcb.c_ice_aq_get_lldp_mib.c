
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_lldp_get_mib {int type; int remote_len; int local_len; } ;
struct TYPE_2__ {struct ice_aqc_lldp_get_mib lldp_get_mib; } ;
struct ice_aq_desc {int datalen; TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_AQ_LLDP_BRID_TYPE_M ;
 int ICE_AQ_LLDP_BRID_TYPE_S ;
 int ICE_AQ_LLDP_MIB_TYPE_M ;
 int ICE_ERR_PARAM ;
 int cpu_to_le16 (int ) ;
 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,void*,int ,struct ice_sq_cd*) ;
 int ice_aqc_opc_lldp_get_mib ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static enum ice_status
ice_aq_get_lldp_mib(struct ice_hw *hw, u8 bridge_type, u8 mib_type, void *buf,
      u16 buf_size, u16 *local_len, u16 *remote_len,
      struct ice_sq_cd *cd)
{
 struct ice_aqc_lldp_get_mib *cmd;
 struct ice_aq_desc desc;
 enum ice_status status;

 cmd = &desc.params.lldp_get_mib;

 if (buf_size == 0 || !buf)
  return ICE_ERR_PARAM;

 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_get_mib);

 cmd->type = mib_type & ICE_AQ_LLDP_MIB_TYPE_M;
 cmd->type |= (bridge_type << ICE_AQ_LLDP_BRID_TYPE_S) &
  ICE_AQ_LLDP_BRID_TYPE_M;

 desc.datalen = cpu_to_le16(buf_size);

 status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
 if (!status) {
  if (local_len)
   *local_len = le16_to_cpu(cmd->local_len);
  if (remote_len)
   *remote_len = le16_to_cpu(cmd->remote_len);
 }

 return status;
}
