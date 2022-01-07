
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {unsigned long active_wks; TYPE_2__* wks; struct iwl_fw_ini_active_triggers* active_trigs; } ;
struct iwl_fw_runtime {TYPE_3__ dump; int trans; } ;
struct iwl_fw_ini_active_triggers {TYPE_1__* trig; } ;
typedef enum iwl_fw_ini_trigger_id { ____Placeholder_iwl_fw_ini_trigger_id } iwl_fw_ini_trigger_id ;
struct TYPE_5__ {int ini_trig_id; int wk; int idx; } ;
struct TYPE_4__ {int force_restart; int occurrences; int dump_delay; } ;


 int EBUSY ;
 int EINVAL ;
 unsigned long IWL_FW_RUNTIME_DUMP_WK_NUM ;
 int IWL_WARN (struct iwl_fw_runtime*,char*,int) ;
 scalar_t__ WARN_ON (int) ;
 int cpu_to_le32 (scalar_t__) ;
 unsigned long ffz (unsigned long) ;
 int iwl_force_nmi (int ) ;
 int iwl_fw_ini_trigger_on (struct iwl_fw_runtime*,int) ;
 scalar_t__ le32_to_cpu (int ) ;
 int schedule_delayed_work (int *,int ) ;
 scalar_t__ test_and_set_bit (int ,unsigned long*) ;
 int usecs_to_jiffies (scalar_t__) ;

int _iwl_fw_dbg_ini_collect(struct iwl_fw_runtime *fwrt,
       enum iwl_fw_ini_trigger_id id)
{
 struct iwl_fw_ini_active_triggers *active;
 u32 occur, delay;
 unsigned long idx;

 if (WARN_ON(!iwl_fw_ini_trigger_on(fwrt, id)))
  return -EINVAL;

 if (!iwl_fw_ini_trigger_on(fwrt, id)) {
  IWL_WARN(fwrt, "WRT: Trigger %d is not active, aborting dump\n",
    id);
  return -EINVAL;
 }

 active = &fwrt->dump.active_trigs[id];
 delay = le32_to_cpu(active->trig->dump_delay);
 occur = le32_to_cpu(active->trig->occurrences);
 if (!occur)
  return 0;

 active->trig->occurrences = cpu_to_le32(--occur);

 if (le32_to_cpu(active->trig->force_restart)) {
  IWL_WARN(fwrt, "WRT: Force restart: trigger %d fired.\n", id);
  iwl_force_nmi(fwrt->trans);
  return 0;
 }





 if (fwrt->dump.active_wks == ~0UL)
  return -EBUSY;

 idx = ffz(fwrt->dump.active_wks);

 if (idx >= IWL_FW_RUNTIME_DUMP_WK_NUM ||
     test_and_set_bit(fwrt->dump.wks[idx].idx, &fwrt->dump.active_wks))
  return -EBUSY;

 fwrt->dump.wks[idx].ini_trig_id = id;

 IWL_WARN(fwrt, "WRT: Collecting data: ini trigger %d fired.\n", id);

 schedule_delayed_work(&fwrt->dump.wks[idx].wk, usecs_to_jiffies(delay));

 return 0;
}
