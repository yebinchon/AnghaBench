
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct tlv_buffer_size {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct channel_tlv {scalar_t__ type; scalar_t__ length; } ;


 scalar_t__ CHANNEL_TLV_LIST_END ;
 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int,scalar_t__,scalar_t__) ;
 int QED_MSG_IOV ;

void qed_dp_tlv_list(struct qed_hwfn *p_hwfn, void *tlvs_list)
{
 u16 i = 1, total_length = 0;
 struct channel_tlv *tlv;

 do {
  tlv = (struct channel_tlv *)((u8 *)tlvs_list + total_length);


  DP_VERBOSE(p_hwfn, QED_MSG_IOV,
      "TLV number %d: type %d, length %d\n",
      i, tlv->type, tlv->length);

  if (tlv->type == CHANNEL_TLV_LIST_END)
   return;


  if (!tlv->length) {
   DP_NOTICE(p_hwfn, "TLV of length 0 found\n");
   return;
  }

  total_length += tlv->length;

  if (total_length >= sizeof(struct tlv_buffer_size)) {
   DP_NOTICE(p_hwfn, "TLV ==> Buffer overflow\n");
   return;
  }

  i++;
 } while (1);
}
