
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wireless_dev {int dummy; } ;
struct iwl_fw_runtime {int dummy; } ;
struct iwl_fw_dbg_trigger_tlv {int id; int trig_dis_ms; } ;


 int IWL_WARN (struct iwl_fw_runtime*,char*,int ) ;
 int USEC_PER_MSEC ;
 scalar_t__ iwl_fw_dbg_no_trig_window (struct iwl_fw_runtime*,int ,int) ;
 int iwl_fw_dbg_trigger_stop_conf_match (struct iwl_fw_runtime*,struct iwl_fw_dbg_trigger_tlv*) ;
 int iwl_fw_dbg_trigger_vif_match (struct iwl_fw_dbg_trigger_tlv*,struct wireless_dev*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline bool
iwl_fw_dbg_trigger_check_stop(struct iwl_fw_runtime *fwrt,
         struct wireless_dev *wdev,
         struct iwl_fw_dbg_trigger_tlv *trig)
{
 u32 usec = le16_to_cpu(trig->trig_dis_ms) * USEC_PER_MSEC;

 if (wdev && !iwl_fw_dbg_trigger_vif_match(trig, wdev))
  return 0;

 if (iwl_fw_dbg_no_trig_window(fwrt, le32_to_cpu(trig->id), usec)) {
  IWL_WARN(fwrt, "Trigger %d occurred while no-collect window.\n",
    trig->id);
  return 0;
 }

 return iwl_fw_dbg_trigger_stop_conf_match(fwrt, trig);
}
