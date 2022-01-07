
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_fw_runtime {int trans; } ;
struct TYPE_2__ {int range_data_size; } ;
struct iwl_fw_ini_region_cfg {TYPE_1__ internal; int offset; int * start_addr; } ;
struct iwl_fw_ini_error_dump_range {int range_data_size; void* internal_base_addr; int * data; } ;
typedef int __le32 ;


 int EBUSY ;
 void* cpu_to_le32 (int) ;
 int iwl_read_prph (int ,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int iwl_dump_ini_prph_iter(struct iwl_fw_runtime *fwrt,
      struct iwl_fw_ini_region_cfg *reg,
      void *range_ptr, int idx)
{
 struct iwl_fw_ini_error_dump_range *range = range_ptr;
 __le32 *val = range->data;
 u32 prph_val;
 u32 addr = le32_to_cpu(reg->start_addr[idx]) + le32_to_cpu(reg->offset);
 int i;

 range->internal_base_addr = cpu_to_le32(addr);
 range->range_data_size = reg->internal.range_data_size;
 for (i = 0; i < le32_to_cpu(reg->internal.range_data_size); i += 4) {
  prph_val = iwl_read_prph(fwrt->trans, addr + i);
  if (prph_val == 0x5a5a5a5a)
   return -EBUSY;
  *val++ = cpu_to_le32(prph_val);
 }

 return sizeof(*range) + le32_to_cpu(range->range_data_size);
}
