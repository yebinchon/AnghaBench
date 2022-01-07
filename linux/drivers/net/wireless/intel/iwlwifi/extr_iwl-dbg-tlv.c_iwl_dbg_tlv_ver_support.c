
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct iwl_ucode_tlv {int type; int * data; } ;
struct iwl_fw_ini_header {int tlv_version; } ;
struct TYPE_2__ {size_t min_ver; size_t max_ver; } ;


 size_t IWL_UCODE_TLV_DEBUG_BASE ;
 TYPE_1__* dbg_ver_table ;
 size_t le32_to_cpu (int ) ;

__attribute__((used)) static bool iwl_dbg_tlv_ver_support(struct iwl_ucode_tlv *tlv)
{
 struct iwl_fw_ini_header *hdr = (void *)&tlv->data[0];
 u32 type = le32_to_cpu(tlv->type);
 u32 tlv_idx = type - IWL_UCODE_TLV_DEBUG_BASE;
 u32 ver = le32_to_cpu(hdr->tlv_version);

 if (ver < dbg_ver_table[tlv_idx].min_ver ||
     ver > dbg_ver_table[tlv_idx].max_ver)
  return 0;

 return 1;
}
