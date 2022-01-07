
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfpf_first_tlv {int dummy; } ;
struct qed_vf_iov {int offset; TYPE_2__* pf2vf_reply; } ;
struct qed_hwfn {struct qed_vf_iov* vf_iov_info; } ;
struct TYPE_3__ {scalar_t__ status; } ;
struct pfvf_def_resp_tlv {TYPE_1__ hdr; } ;
struct channel_list_end_tlv {int dummy; } ;
struct TYPE_4__ {struct pfvf_def_resp_tlv default_resp; } ;


 int CHANNEL_TLV_INT_CLEANUP ;
 int CHANNEL_TLV_LIST_END ;
 int EINVAL ;
 scalar_t__ PFVF_STATUS_SUCCESS ;
 int qed_add_tlv (struct qed_hwfn*,int *,int ,int) ;
 int qed_send_msg2pf (struct qed_hwfn*,scalar_t__*,int) ;
 int qed_vf_pf_prep (struct qed_hwfn*,int ,int) ;
 int qed_vf_pf_req_end (struct qed_hwfn*,int) ;

int qed_vf_pf_int_cleanup(struct qed_hwfn *p_hwfn)
{
 struct qed_vf_iov *p_iov = p_hwfn->vf_iov_info;
 struct pfvf_def_resp_tlv *resp = &p_iov->pf2vf_reply->default_resp;
 int rc;


 qed_vf_pf_prep(p_hwfn, CHANNEL_TLV_INT_CLEANUP,
         sizeof(struct vfpf_first_tlv));


 qed_add_tlv(p_hwfn, &p_iov->offset,
      CHANNEL_TLV_LIST_END, sizeof(struct channel_list_end_tlv));

 rc = qed_send_msg2pf(p_hwfn, &resp->hdr.status, sizeof(*resp));
 if (rc)
  goto exit;

 if (resp->hdr.status != PFVF_STATUS_SUCCESS) {
  rc = -EINVAL;
  goto exit;
 }

exit:
 qed_vf_pf_req_end(p_hwfn, rc);

 return rc;
}
