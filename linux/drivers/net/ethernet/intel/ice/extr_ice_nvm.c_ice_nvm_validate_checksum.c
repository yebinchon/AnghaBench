
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_hw {int dummy; } ;
struct ice_aqc_nvm_checksum {int checksum; int flags; } ;
struct TYPE_2__ {struct ice_aqc_nvm_checksum nvm_checksum; } ;
struct ice_aq_desc {TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 scalar_t__ ICE_AQC_NVM_CHECKSUM_CORRECT ;
 int ICE_AQC_NVM_CHECKSUM_VERIFY ;
 int ICE_ERR_NVM_CHECKSUM ;
 int ICE_RES_READ ;
 int ice_acquire_nvm (struct ice_hw*,int ) ;
 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,int *,int ,int *) ;
 int ice_aqc_opc_nvm_checksum ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;
 int ice_release_nvm (struct ice_hw*) ;
 scalar_t__ le16_to_cpu (int ) ;

enum ice_status ice_nvm_validate_checksum(struct ice_hw *hw)
{
 struct ice_aqc_nvm_checksum *cmd;
 struct ice_aq_desc desc;
 enum ice_status status;

 status = ice_acquire_nvm(hw, ICE_RES_READ);
 if (status)
  return status;

 cmd = &desc.params.nvm_checksum;

 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_nvm_checksum);
 cmd->flags = ICE_AQC_NVM_CHECKSUM_VERIFY;

 status = ice_aq_send_cmd(hw, &desc, ((void*)0), 0, ((void*)0));
 ice_release_nvm(hw);

 if (!status)
  if (le16_to_cpu(cmd->checksum) != ICE_AQC_NVM_CHECKSUM_CORRECT)
   status = ICE_ERR_NVM_CHECKSUM;

 return status;
}
