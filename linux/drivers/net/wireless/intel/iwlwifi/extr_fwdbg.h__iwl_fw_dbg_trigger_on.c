
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct iwl_fw_runtime {int fw; int trans; } ;
struct iwl_fw_dbg_trigger_tlv {int dummy; } ;
typedef enum iwl_fw_dbg_trigger { ____Placeholder_iwl_fw_dbg_trigger } iwl_fw_dbg_trigger ;


 struct iwl_fw_dbg_trigger_tlv* _iwl_fw_dbg_get_trigger (int ,int const) ;
 int iwl_fw_dbg_trigger_check_stop (struct iwl_fw_runtime*,struct wireless_dev*,struct iwl_fw_dbg_trigger_tlv*) ;
 int iwl_fw_dbg_trigger_enabled (int ,int const) ;
 scalar_t__ iwl_trans_dbg_ini_valid (int ) ;

__attribute__((used)) static inline struct iwl_fw_dbg_trigger_tlv*
_iwl_fw_dbg_trigger_on(struct iwl_fw_runtime *fwrt,
         struct wireless_dev *wdev,
         const enum iwl_fw_dbg_trigger id)
{
 struct iwl_fw_dbg_trigger_tlv *trig;

 if (iwl_trans_dbg_ini_valid(fwrt->trans))
  return ((void*)0);

 if (!iwl_fw_dbg_trigger_enabled(fwrt->fw, id))
  return ((void*)0);

 trig = _iwl_fw_dbg_get_trigger(fwrt->fw, id);

 if (!iwl_fw_dbg_trigger_check_stop(fwrt, wdev, trig))
  return ((void*)0);

 return trig;
}
