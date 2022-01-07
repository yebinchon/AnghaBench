
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct iwl_ucode_tlv {int length; } ;
struct iwl_trans {int dummy; } ;


 scalar_t__ ALIGN (size_t,int) ;
 int EINVAL ;
 int IWL_ERR (struct iwl_trans*,char*,size_t,size_t) ;
 int iwl_dbg_tlv_alloc (struct iwl_trans*,struct iwl_ucode_tlv*,int) ;
 size_t le32_to_cpu (int ) ;

__attribute__((used)) static int iwl_dbg_tlv_parse_bin(struct iwl_trans *trans, const u8 *data,
     size_t len)
{
 struct iwl_ucode_tlv *tlv;
 u32 tlv_len;

 while (len >= sizeof(*tlv)) {
  len -= sizeof(*tlv);
  tlv = (void *)data;

  tlv_len = le32_to_cpu(tlv->length);

  if (len < tlv_len) {
   IWL_ERR(trans, "invalid TLV len: %zd/%u\n",
    len, tlv_len);
   return -EINVAL;
  }
  len -= ALIGN(tlv_len, 4);
  data += sizeof(*tlv) + ALIGN(tlv_len, 4);

  iwl_dbg_tlv_alloc(trans, tlv, 1);
 }

 return 0;
}
