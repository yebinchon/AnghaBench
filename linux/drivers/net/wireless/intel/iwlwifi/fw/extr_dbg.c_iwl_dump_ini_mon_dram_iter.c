
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
struct iwl_fw_ini_error_dump_range {int range_data_size; int data; int dram_base_addr; } ;
struct TYPE_5__ {TYPE_1__* fw_mon; } ;
struct TYPE_6__ {TYPE_2__ dbg; } ;
struct TYPE_4__ {int size; int block; } ;


 int EBUSY ;
 int MON_BUFF_BASE_ADDR_VER2 ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int) ;
 int iwl_read_umac_prph (TYPE_3__*,int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int
iwl_dump_ini_mon_dram_iter(struct iwl_fw_runtime *fwrt,
      struct iwl_fw_ini_region_cfg *reg, void *range_ptr,
      int idx)
{
 struct iwl_fw_ini_error_dump_range *range = range_ptr;
 u32 start_addr = iwl_read_umac_prph(fwrt->trans,
         MON_BUFF_BASE_ADDR_VER2);

 if (start_addr == 0x5a5a5a5a)
  return -EBUSY;

 range->dram_base_addr = cpu_to_le64(start_addr);
 range->range_data_size = cpu_to_le32(fwrt->trans->dbg.fw_mon[idx].size);

 memcpy(range->data, fwrt->trans->dbg.fw_mon[idx].block,
        fwrt->trans->dbg.fw_mon[idx].size);

 return sizeof(*range) + le32_to_cpu(range->range_data_size);
}
