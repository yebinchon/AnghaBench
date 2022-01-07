
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union pfvf_tlvs {int dummy; } pfvf_tlvs ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct qed_vf_info {int relative_vf_id; } ;
struct qed_iov_vf_mbx {int * offset; scalar_t__ reply_virt; } ;
struct qed_hwfn {int dummy; } ;
struct TYPE_2__ {int status; } ;
struct pfvf_def_resp_tlv {TYPE_1__ hdr; } ;
struct channel_list_end_tlv {int dummy; } ;


 scalar_t__ BIT (scalar_t__) ;
 int CHANNEL_TLV_LIST_END ;
 int CHANNEL_TLV_VPORT_UPDATE ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ,int ) ;
 int PFVF_STATUS_NOT_SUPPORTED ;
 scalar_t__ QED_IOV_VP_UPDATE_MAX ;
 int QED_MSG_IOV ;
 int memset (scalar_t__,int ,int) ;
 struct pfvf_def_resp_tlv* qed_add_tlv (struct qed_hwfn*,int **,int ,int) ;
 int qed_iov_vport_to_tlv (struct qed_hwfn*,scalar_t__) ;

__attribute__((used)) static u16 qed_iov_prep_vp_update_resp_tlvs(struct qed_hwfn *p_hwfn,
         struct qed_vf_info *p_vf,
         struct qed_iov_vf_mbx *p_mbx,
         u8 status,
         u16 tlvs_mask, u16 tlvs_accepted)
{
 struct pfvf_def_resp_tlv *resp;
 u16 size, total_len, i;

 memset(p_mbx->reply_virt, 0, sizeof(union pfvf_tlvs));
 p_mbx->offset = (u8 *)p_mbx->reply_virt;
 size = sizeof(struct pfvf_def_resp_tlv);
 total_len = size;

 qed_add_tlv(p_hwfn, &p_mbx->offset, CHANNEL_TLV_VPORT_UPDATE, size);


 for (i = 0; i < QED_IOV_VP_UPDATE_MAX; i++) {
  if (!(tlvs_mask & BIT(i)))
   continue;

  resp = qed_add_tlv(p_hwfn, &p_mbx->offset,
       qed_iov_vport_to_tlv(p_hwfn, i), size);

  if (tlvs_accepted & BIT(i))
   resp->hdr.status = status;
  else
   resp->hdr.status = PFVF_STATUS_NOT_SUPPORTED;

  DP_VERBOSE(p_hwfn,
      QED_MSG_IOV,
      "VF[%d] - vport_update response: TLV %d, status %02x\n",
      p_vf->relative_vf_id,
      qed_iov_vport_to_tlv(p_hwfn, i), resp->hdr.status);

  total_len += size;
 }

 qed_add_tlv(p_hwfn, &p_mbx->offset, CHANNEL_TLV_LIST_END,
      sizeof(struct channel_list_end_tlv));

 return total_len;
}
