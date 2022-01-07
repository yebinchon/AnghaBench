
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_prph_range {int end; int start; } ;
struct iwl_fw_runtime {int dummy; } ;
struct iwl_fw_error_dump_prph {int dummy; } ;
struct iwl_fw_error_dump_data {int dummy; } ;



__attribute__((used)) static void iwl_fw_get_prph_len(struct iwl_fw_runtime *fwrt,
    const struct iwl_prph_range *iwl_prph_dump_addr,
    u32 range_len, void *ptr)
{
 u32 *prph_len = (u32 *)ptr;
 int i, num_bytes_in_chunk;

 if (!prph_len)
  return;

 for (i = 0; i < range_len; i++) {

  num_bytes_in_chunk =
   iwl_prph_dump_addr[i].end -
   iwl_prph_dump_addr[i].start + 4;

  *prph_len += sizeof(struct iwl_fw_error_dump_data) +
   sizeof(struct iwl_fw_error_dump_prph) +
   num_bytes_in_chunk;
 }
}
