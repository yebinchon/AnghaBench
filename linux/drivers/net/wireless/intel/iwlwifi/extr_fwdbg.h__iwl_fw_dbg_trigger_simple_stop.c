
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct iwl_fw_runtime {int dummy; } ;
struct iwl_fw_dbg_trigger_tlv {int dummy; } ;


 int iwl_fw_dbg_collect_trig (struct iwl_fw_runtime*,struct iwl_fw_dbg_trigger_tlv*,int *) ;
 int iwl_fw_dbg_trigger_check_stop (struct iwl_fw_runtime*,struct wireless_dev*,struct iwl_fw_dbg_trigger_tlv*) ;

__attribute__((used)) static inline void
_iwl_fw_dbg_trigger_simple_stop(struct iwl_fw_runtime *fwrt,
    struct wireless_dev *wdev,
    struct iwl_fw_dbg_trigger_tlv *trigger)
{
 if (!trigger)
  return;

 if (!iwl_fw_dbg_trigger_check_stop(fwrt, wdev, trigger))
  return;

 iwl_fw_dbg_collect_trig(fwrt, trigger, ((void*)0));
}
