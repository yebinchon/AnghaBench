
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct iwl_trans {int dummy; } ;
struct iwl_prph_range {int end; int start; } ;
struct iwl_fw_runtime {struct iwl_trans* trans; } ;
struct iwl_fw_error_dump_prph {scalar_t__ data; void* prph_start; } ;
struct iwl_fw_error_dump_data {scalar_t__ data; void* len; void* type; } ;


 int IWL_DEBUG_INFO (struct iwl_trans*,char*) ;
 int IWL_FW_ERROR_DUMP_PRPH ;
 void* cpu_to_le32 (int) ;
 struct iwl_fw_error_dump_data* iwl_fw_error_next_data (struct iwl_fw_error_dump_data*) ;
 int iwl_read_prph_block (struct iwl_trans*,int,int,void*) ;
 int iwl_trans_grab_nic_access (struct iwl_trans*,unsigned long*) ;
 int iwl_trans_release_nic_access (struct iwl_trans*,unsigned long*) ;

__attribute__((used)) static void iwl_dump_prph(struct iwl_fw_runtime *fwrt,
     const struct iwl_prph_range *iwl_prph_dump_addr,
     u32 range_len, void *ptr)
{
 struct iwl_fw_error_dump_prph *prph;
 struct iwl_trans *trans = fwrt->trans;
 struct iwl_fw_error_dump_data **data =
  (struct iwl_fw_error_dump_data **)ptr;
 unsigned long flags;
 u32 i;

 if (!data)
  return;

 IWL_DEBUG_INFO(trans, "WRT PRPH dump\n");

 if (!iwl_trans_grab_nic_access(trans, &flags))
  return;

 for (i = 0; i < range_len; i++) {

  int num_bytes_in_chunk = iwl_prph_dump_addr[i].end -
    iwl_prph_dump_addr[i].start + 4;

  (*data)->type = cpu_to_le32(IWL_FW_ERROR_DUMP_PRPH);
  (*data)->len = cpu_to_le32(sizeof(*prph) +
     num_bytes_in_chunk);
  prph = (void *)(*data)->data;
  prph->prph_start = cpu_to_le32(iwl_prph_dump_addr[i].start);

  iwl_read_prph_block(trans, iwl_prph_dump_addr[i].start,

        iwl_prph_dump_addr[i].end -
        iwl_prph_dump_addr[i].start + 4,
        (void *)prph->data);

  *data = iwl_fw_error_next_data(*data);
 }

 iwl_trans_release_nic_access(trans, &flags);
}
