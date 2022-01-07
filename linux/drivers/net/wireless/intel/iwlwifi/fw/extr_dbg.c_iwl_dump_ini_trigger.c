
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct list_head {int dummy; } ;
struct TYPE_2__ {struct iwl_fw_ini_region_cfg** active_regs; } ;
struct iwl_fw_runtime {TYPE_1__ dump; } ;
struct iwl_fw_ini_trigger {int * data; int num_regions; } ;
struct iwl_fw_ini_region_cfg {int region_type; int domain; } ;


 size_t ARRAY_SIZE (struct iwl_fw_ini_region_cfg**) ;
 scalar_t__ IWL_FW_INI_DBG_DOMAIN_ALWAYS_ON ;
 int IWL_WARN (struct iwl_fw_runtime*,char*,size_t) ;
 scalar_t__ WARN_ON (int) ;
 size_t iwl_dump_ini_info (struct iwl_fw_runtime*,struct iwl_fw_ini_trigger*,struct list_head*) ;
 size_t iwl_dump_ini_mem (struct iwl_fw_runtime*,struct list_head*,struct iwl_fw_ini_region_cfg*,struct iwl_fw_ini_region_cfg**) ;
 struct iwl_fw_ini_region_cfg** iwl_dump_ini_region_ops ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static u32 iwl_dump_ini_trigger(struct iwl_fw_runtime *fwrt,
    struct iwl_fw_ini_trigger *trigger,
    struct list_head *list)
{
 int i;
 u32 size = 0;

 for (i = 0; i < le32_to_cpu(trigger->num_regions); i++) {
  u32 reg_id = le32_to_cpu(trigger->data[i]), reg_type;
  struct iwl_fw_ini_region_cfg *reg;

  if (WARN_ON(reg_id >= ARRAY_SIZE(fwrt->dump.active_regs)))
   continue;

  reg = fwrt->dump.active_regs[reg_id];
  if (!reg) {
   IWL_WARN(fwrt,
     "WRT: Unassigned region id %d, skipping\n",
     reg_id);
   continue;
  }


  if (le32_to_cpu(reg->domain) != IWL_FW_INI_DBG_DOMAIN_ALWAYS_ON)
   continue;

  reg_type = le32_to_cpu(reg->region_type);
  if (reg_type >= ARRAY_SIZE(iwl_dump_ini_region_ops))
   continue;

  size += iwl_dump_ini_mem(fwrt, list, reg,
      &iwl_dump_ini_region_ops[reg_type]);
 }

 if (size)
  size += iwl_dump_ini_info(fwrt, trigger, list);

 return size;
}
