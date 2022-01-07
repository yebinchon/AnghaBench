
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ice_hw {int dummy; } ;
struct ice_aq_desc {int datalen; } ;


 int ICE_DBG_FW_LOG ;
 int ice_debug (struct ice_hw*,int ,char*) ;
 int ice_debug_array (struct ice_hw*,int ,int,int,int *,int ) ;
 int le16_to_cpu (int ) ;

void ice_output_fw_log(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf)
{
 ice_debug(hw, ICE_DBG_FW_LOG, "[ FW Log Msg Start ]\n");
 ice_debug_array(hw, ICE_DBG_FW_LOG, 16, 1, (u8 *)buf,
   le16_to_cpu(desc->datalen));
 ice_debug(hw, ICE_DBG_FW_LOG, "[ FW Log Msg End ]\n");
}
