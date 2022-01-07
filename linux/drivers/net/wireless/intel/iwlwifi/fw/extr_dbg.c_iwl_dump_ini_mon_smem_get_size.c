
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_fw_runtime {int dummy; } ;
struct TYPE_2__ {int range_data_size; } ;
struct iwl_fw_ini_region_cfg {TYPE_1__ internal; } ;
struct iwl_fw_ini_monitor_dump {int dummy; } ;
struct iwl_fw_ini_error_dump_range {int dummy; } ;


 int iwl_dump_ini_mem_ranges (struct iwl_fw_runtime*,struct iwl_fw_ini_region_cfg*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static u32 iwl_dump_ini_mon_smem_get_size(struct iwl_fw_runtime *fwrt,
       struct iwl_fw_ini_region_cfg *reg)
{
 return sizeof(struct iwl_fw_ini_monitor_dump) +
  iwl_dump_ini_mem_ranges(fwrt, reg) *
  (sizeof(struct iwl_fw_ini_error_dump_range) +
   le32_to_cpu(reg->internal.range_data_size));
}
