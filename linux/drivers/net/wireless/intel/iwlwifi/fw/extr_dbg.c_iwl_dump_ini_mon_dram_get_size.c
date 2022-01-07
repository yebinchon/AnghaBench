
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct iwl_fw_runtime {TYPE_3__* trans; } ;
struct iwl_fw_ini_region_cfg {int dummy; } ;
struct iwl_fw_ini_monitor_dump {int dummy; } ;
struct iwl_fw_ini_error_dump_range {int dummy; } ;
struct TYPE_5__ {TYPE_1__* fw_mon; scalar_t__ num_blocks; } ;
struct TYPE_6__ {TYPE_2__ dbg; } ;
struct TYPE_4__ {scalar_t__ size; } ;



__attribute__((used)) static u32 iwl_dump_ini_mon_dram_get_size(struct iwl_fw_runtime *fwrt,
       struct iwl_fw_ini_region_cfg *reg)
{
 u32 size = sizeof(struct iwl_fw_ini_monitor_dump) +
  sizeof(struct iwl_fw_ini_error_dump_range);

 if (fwrt->trans->dbg.num_blocks)
  size += fwrt->trans->dbg.fw_mon[0].size;

 return size;
}
