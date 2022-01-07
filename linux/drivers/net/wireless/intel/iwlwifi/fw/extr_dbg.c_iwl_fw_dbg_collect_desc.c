
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int monitor_only; TYPE_2__* wks; struct iwl_fw_dump_desc const* desc; int active_wks; } ;
struct iwl_fw_runtime {TYPE_3__ dump; int trans; } ;
struct TYPE_4__ {int type; } ;
struct iwl_fw_dump_desc {TYPE_1__ trig_desc; } ;
struct TYPE_5__ {int wk; int idx; } ;


 int EBUSY ;
 int IWL_WARN (struct iwl_fw_runtime*,char*,int ) ;
 scalar_t__ WARN_ON (struct iwl_fw_dump_desc const*) ;
 int iwl_fw_dbg_ini_collect (struct iwl_fw_runtime*,int ) ;
 int iwl_fw_free_dump_desc (struct iwl_fw_runtime*) ;
 scalar_t__ iwl_trans_dbg_ini_valid (int ) ;
 int le32_to_cpu (int ) ;
 int schedule_delayed_work (int *,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usecs_to_jiffies (unsigned int) ;

int iwl_fw_dbg_collect_desc(struct iwl_fw_runtime *fwrt,
       const struct iwl_fw_dump_desc *desc,
       bool monitor_only,
       unsigned int delay)
{
 u32 trig_type = le32_to_cpu(desc->trig_desc.type);
 int ret;

 if (iwl_trans_dbg_ini_valid(fwrt->trans)) {
  ret = iwl_fw_dbg_ini_collect(fwrt, trig_type);
  if (!ret)
   iwl_fw_free_dump_desc(fwrt);

  return ret;
 }




 if (test_and_set_bit(fwrt->dump.wks[0].idx, &fwrt->dump.active_wks))
  return -EBUSY;

 if (WARN_ON(fwrt->dump.desc))
  iwl_fw_free_dump_desc(fwrt);

 IWL_WARN(fwrt, "Collecting data: trigger %d fired.\n",
   le32_to_cpu(desc->trig_desc.type));

 fwrt->dump.desc = desc;
 fwrt->dump.monitor_only = monitor_only;

 schedule_delayed_work(&fwrt->dump.wks[0].wk, usecs_to_jiffies(delay));

 return 0;
}
