
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {TYPE_2__* active_trigs; } ;
struct iwl_fw_runtime {TYPE_1__ dump; int trans; } ;
struct iwl_fw_ini_trigger {int ignore_consec; } ;
typedef enum iwl_fw_ini_trigger_id { ____Placeholder_iwl_fw_ini_trigger_id } iwl_fw_ini_trigger_id ;
struct TYPE_4__ {struct iwl_fw_ini_trigger* trig; int active; } ;


 int IWL_FW_TRIGGER_ID_INVALID ;
 int IWL_FW_TRIGGER_ID_NUM ;
 int IWL_WARN (struct iwl_fw_runtime*,char*,int) ;
 scalar_t__ iwl_fw_dbg_no_trig_window (struct iwl_fw_runtime*,int,int ) ;
 int iwl_trans_dbg_ini_valid (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline bool
iwl_fw_ini_trigger_on(struct iwl_fw_runtime *fwrt,
        enum iwl_fw_ini_trigger_id id)
{
 struct iwl_fw_ini_trigger *trig;
 u32 usec;

 if (!iwl_trans_dbg_ini_valid(fwrt->trans) ||
     id == IWL_FW_TRIGGER_ID_INVALID || id >= IWL_FW_TRIGGER_ID_NUM ||
     !fwrt->dump.active_trigs[id].active)
  return 0;

 trig = fwrt->dump.active_trigs[id].trig;
 usec = le32_to_cpu(trig->ignore_consec);

 if (iwl_fw_dbg_no_trig_window(fwrt, id, usec)) {
  IWL_WARN(fwrt, "Trigger %d fired in no-collect window\n", id);
  return 0;
 }

 return 1;
}
