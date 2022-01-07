
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ conf; } ;
struct iwl_fw_runtime {TYPE_1__ dump; } ;
struct iwl_fw_dbg_trigger_tlv {int mode; int stop_conf_ids; } ;


 int BIT (scalar_t__) ;
 scalar_t__ FW_DBG_INVALID ;
 int IWL_FW_DBG_TRIGGER_STOP ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline bool
iwl_fw_dbg_trigger_stop_conf_match(struct iwl_fw_runtime *fwrt,
       struct iwl_fw_dbg_trigger_tlv *trig)
{
 return ((trig->mode & IWL_FW_DBG_TRIGGER_STOP) &&
  (fwrt->dump.conf == FW_DBG_INVALID ||
  (BIT(fwrt->dump.conf) & le32_to_cpu(trig->stop_conf_ids))));
}
