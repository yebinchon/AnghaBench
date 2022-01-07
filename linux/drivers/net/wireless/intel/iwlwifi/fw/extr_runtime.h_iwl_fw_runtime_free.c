
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* wks; struct iwl_fw_ini_active_triggers* active_trigs; int * d3_debug_data; } ;
struct iwl_fw_runtime {TYPE_2__ dump; int trans; } ;
struct iwl_fw_ini_active_triggers {int active; int * trig; scalar_t__ size; } ;
struct TYPE_3__ {int wk; } ;


 int IWL_FW_RUNTIME_DUMP_WK_NUM ;
 int IWL_FW_TRIGGER_ID_NUM ;
 int cancel_delayed_work_sync (int *) ;
 int iwl_dbg_tlv_del_timers (int ) ;
 int kfree (int *) ;

__attribute__((used)) static inline void iwl_fw_runtime_free(struct iwl_fw_runtime *fwrt)
{
 int i;

 kfree(fwrt->dump.d3_debug_data);
 fwrt->dump.d3_debug_data = ((void*)0);

 for (i = 0; i < IWL_FW_TRIGGER_ID_NUM; i++) {
  struct iwl_fw_ini_active_triggers *active =
   &fwrt->dump.active_trigs[i];

  active->active = 0;
  active->size = 0;
  kfree(active->trig);
  active->trig = ((void*)0);
 }

 iwl_dbg_tlv_del_timers(fwrt->trans);
 for (i = 0; i < IWL_FW_RUNTIME_DUMP_WK_NUM; i++)
  cancel_delayed_work_sync(&fwrt->dump.wks[i].wk);
}
