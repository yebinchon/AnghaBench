
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct TYPE_6__ {int actv_evnts; TYPE_2__* evnts; scalar_t__ uart_en; scalar_t__ cq_en; } ;
struct ice_hw {TYPE_3__ fw_log; int adminq; } ;
struct ice_aqc_fw_logging_data {int * entry; } ;
struct ice_aqc_fw_logging {int log_ctrl; int log_ctrl_valid; } ;
struct TYPE_4__ {struct ice_aqc_fw_logging fw_logging; } ;
struct ice_aq_desc {int flags; TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_5__ {int cfg; int cur; } ;


 int GFP_KERNEL ;
 int ICE_AQC_FW_LOG_AQ_EN ;
 int ICE_AQC_FW_LOG_AQ_VALID ;
 size_t ICE_AQC_FW_LOG_EN_S ;
 size_t ICE_AQC_FW_LOG_ID_M ;
 size_t ICE_AQC_FW_LOG_ID_MAX ;
 size_t ICE_AQC_FW_LOG_ID_S ;
 int ICE_AQC_FW_LOG_UART_EN ;
 int ICE_AQC_FW_LOG_UART_VALID ;
 size_t ICE_AQ_FLAG_RD ;
 int ICE_ERR_NO_MEMORY ;
 size_t ICE_FW_LOG_DESC_SIZE (size_t) ;
 int ICE_FW_LOG_DESC_SIZE_MAX ;
 int cpu_to_le16 (size_t) ;
 int devm_kfree (int ,struct ice_aqc_fw_logging_data*) ;
 struct ice_aqc_fw_logging_data* devm_kzalloc (int ,int ,int ) ;
 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,void*,size_t,int *) ;
 int ice_aqc_opc_fw_logging ;
 int ice_check_sq_alive (struct ice_hw*,int *) ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;
 int ice_get_fw_log_cfg (struct ice_hw*) ;
 int ice_hw_to_dev (struct ice_hw*) ;
 size_t le16_to_cpu (int ) ;

__attribute__((used)) static enum ice_status ice_cfg_fw_log(struct ice_hw *hw, bool enable)
{
 struct ice_aqc_fw_logging_data *data = ((void*)0);
 struct ice_aqc_fw_logging *cmd;
 enum ice_status status = 0;
 u16 i, chgs = 0, len = 0;
 struct ice_aq_desc desc;
 u8 actv_evnts = 0;
 void *buf = ((void*)0);

 if (!hw->fw_log.cq_en && !hw->fw_log.uart_en)
  return 0;


 if (!enable &&
     (!hw->fw_log.actv_evnts || !ice_check_sq_alive(hw, &hw->adminq)))
  return 0;


 status = ice_get_fw_log_cfg(hw);
 if (status)
  return status;

 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logging);
 cmd = &desc.params.fw_logging;


 if (hw->fw_log.cq_en)
  cmd->log_ctrl_valid |= ICE_AQC_FW_LOG_AQ_VALID;

 if (hw->fw_log.uart_en)
  cmd->log_ctrl_valid |= ICE_AQC_FW_LOG_UART_VALID;

 if (enable) {



  for (i = 0; i < ICE_AQC_FW_LOG_ID_MAX; i++) {
   u16 val;


   actv_evnts |= hw->fw_log.evnts[i].cfg;

   if (hw->fw_log.evnts[i].cfg == hw->fw_log.evnts[i].cur)
    continue;

   if (!data) {
    data = devm_kzalloc(ice_hw_to_dev(hw),
          ICE_FW_LOG_DESC_SIZE_MAX,
          GFP_KERNEL);
    if (!data)
     return ICE_ERR_NO_MEMORY;
   }

   val = i << ICE_AQC_FW_LOG_ID_S;
   val |= hw->fw_log.evnts[i].cfg << ICE_AQC_FW_LOG_EN_S;
   data->entry[chgs++] = cpu_to_le16(val);
  }





  if (actv_evnts) {

   if (!chgs)
    goto out;

   if (hw->fw_log.cq_en)
    cmd->log_ctrl |= ICE_AQC_FW_LOG_AQ_EN;

   if (hw->fw_log.uart_en)
    cmd->log_ctrl |= ICE_AQC_FW_LOG_UART_EN;

   buf = data;
   len = ICE_FW_LOG_DESC_SIZE(chgs);
   desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
  }
 }

 status = ice_aq_send_cmd(hw, &desc, buf, len, ((void*)0));
 if (!status) {






  u16 cnt = enable ? chgs : (u16)ICE_AQC_FW_LOG_ID_MAX;

  hw->fw_log.actv_evnts = actv_evnts;
  for (i = 0; i < cnt; i++) {
   u16 v, m;

   if (!enable) {






    hw->fw_log.evnts[i].cur = 0;
    continue;
   }

   v = le16_to_cpu(data->entry[i]);
   m = (v & ICE_AQC_FW_LOG_ID_M) >> ICE_AQC_FW_LOG_ID_S;
   hw->fw_log.evnts[m].cur = hw->fw_log.evnts[m].cfg;
  }
 }

out:
 if (data)
  devm_kfree(ice_hw_to_dev(hw), data);

 return status;
}
