
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* wks; } ;
struct iwl_fw_runtime {TYPE_2__ dump; int trans; } ;
struct TYPE_3__ {int ini_trig_id; int wk; } ;


 int IWL_FW_RUNTIME_DUMP_WK_NUM ;
 int IWL_FW_TRIGGER_ID_INVALID ;
 int flush_delayed_work (int *) ;
 int iwl_dbg_tlv_del_timers (int ) ;

__attribute__((used)) static inline void iwl_fw_flush_dumps(struct iwl_fw_runtime *fwrt)
{
 int i;

 iwl_dbg_tlv_del_timers(fwrt->trans);
 for (i = 0; i < IWL_FW_RUNTIME_DUMP_WK_NUM; i++) {
  flush_delayed_work(&fwrt->dump.wks[i].wk);
  fwrt->dump.wks[i].ini_trig_id = IWL_FW_TRIGGER_ID_INVALID;
 }
}
