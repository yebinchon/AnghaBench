
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct qed_vf_iov {int pf2vf_reply; } ;
struct qed_sp_vport_update_params {int dummy; } ;
struct qed_hwfn {struct qed_vf_iov* vf_iov_info; } ;
struct TYPE_2__ {scalar_t__ status; } ;
struct pfvf_def_resp_tlv {TYPE_1__ hdr; } ;


 scalar_t__ CHANNEL_TLV_VPORT_UPDATE_ACTIVATE ;
 scalar_t__ CHANNEL_TLV_VPORT_UPDATE_MAX ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,scalar_t__,char*) ;
 int QED_MSG_IOV ;
 scalar_t__ qed_iov_search_list_tlvs (struct qed_hwfn*,int ,scalar_t__) ;
 int qed_vf_handle_vp_update_is_needed (struct qed_hwfn*,struct qed_sp_vport_update_params*,scalar_t__) ;

__attribute__((used)) static void
qed_vf_handle_vp_update_tlvs_resp(struct qed_hwfn *p_hwfn,
      struct qed_sp_vport_update_params *p_data)
{
 struct qed_vf_iov *p_iov = p_hwfn->vf_iov_info;
 struct pfvf_def_resp_tlv *p_resp;
 u16 tlv;

 for (tlv = CHANNEL_TLV_VPORT_UPDATE_ACTIVATE;
      tlv < CHANNEL_TLV_VPORT_UPDATE_MAX; tlv++) {
  if (!qed_vf_handle_vp_update_is_needed(p_hwfn, p_data, tlv))
   continue;

  p_resp = (struct pfvf_def_resp_tlv *)
    qed_iov_search_list_tlvs(p_hwfn, p_iov->pf2vf_reply,
        tlv);
  if (p_resp && p_resp->hdr.status)
   DP_VERBOSE(p_hwfn, QED_MSG_IOV,
       "TLV[%d] Configuration %s\n",
       tlv,
       (p_resp && p_resp->hdr.status) ? "succeeded"
          : "failed");
 }
}
