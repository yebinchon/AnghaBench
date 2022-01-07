
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_fw_runtime {int trans; } ;
struct TYPE_2__ {int range_data_size; } ;
struct iwl_fw_ini_region_cfg {TYPE_1__ internal; int offset; int * start_addr; } ;
struct iwl_fw_ini_error_dump_range {int range_data_size; int data; int internal_base_addr; } ;


 int cpu_to_le32 (int) ;
 int iwl_trans_read_mem_bytes (int ,int,int ,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int iwl_dump_ini_dev_mem_iter(struct iwl_fw_runtime *fwrt,
         struct iwl_fw_ini_region_cfg *reg,
         void *range_ptr, int idx)
{
 struct iwl_fw_ini_error_dump_range *range = range_ptr;
 u32 addr = le32_to_cpu(reg->start_addr[idx]) + le32_to_cpu(reg->offset);

 range->internal_base_addr = cpu_to_le32(addr);
 range->range_data_size = reg->internal.range_data_size;
 iwl_trans_read_mem_bytes(fwrt->trans, addr, range->data,
     le32_to_cpu(reg->internal.range_data_size));

 return sizeof(*range) + le32_to_cpu(range->range_data_size);
}
