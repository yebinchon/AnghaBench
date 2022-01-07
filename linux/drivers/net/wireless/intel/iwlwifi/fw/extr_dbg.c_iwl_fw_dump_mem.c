
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_fw_runtime {int trans; } ;
struct iwl_fw_error_dump_mem {void* type; int data; void* offset; } ;
struct iwl_fw_error_dump_data {scalar_t__ data; void* len; void* type; } ;


 int IWL_DEBUG_INFO (struct iwl_fw_runtime*,char*,void*) ;
 int IWL_FW_ERROR_DUMP_MEM ;
 void* cpu_to_le32 (int ) ;
 struct iwl_fw_error_dump_data* iwl_fw_error_next_data (struct iwl_fw_error_dump_data*) ;
 int iwl_trans_read_mem_bytes (int ,int ,int ,int ) ;

__attribute__((used)) static void iwl_fw_dump_mem(struct iwl_fw_runtime *fwrt,
       struct iwl_fw_error_dump_data **dump_data,
       u32 len, u32 ofs, u32 type)
{
 struct iwl_fw_error_dump_mem *dump_mem;

 if (!len)
  return;

 (*dump_data)->type = cpu_to_le32(IWL_FW_ERROR_DUMP_MEM);
 (*dump_data)->len = cpu_to_le32(len + sizeof(*dump_mem));
 dump_mem = (void *)(*dump_data)->data;
 dump_mem->type = cpu_to_le32(type);
 dump_mem->offset = cpu_to_le32(ofs);
 iwl_trans_read_mem_bytes(fwrt->trans, ofs, dump_mem->data, len);
 *dump_data = iwl_fw_error_next_data(*dump_data);

 IWL_DEBUG_INFO(fwrt, "WRT memory dump. Type=%u\n", dump_mem->type);
}
