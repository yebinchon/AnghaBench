
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfpf_first_tlv {int dummy; } ;
struct qed_vf_iov {TYPE_1__* pf2vf_reply; int offset; } ;
struct qed_hwfn {scalar_t__ b_int_enabled; struct qed_vf_iov* vf_iov_info; } ;
struct TYPE_4__ {scalar_t__ status; } ;
struct pfvf_def_resp_tlv {TYPE_2__ hdr; } ;
struct channel_list_end_tlv {int dummy; } ;
struct TYPE_3__ {struct pfvf_def_resp_tlv default_resp; } ;


 int CHANNEL_TLV_CLOSE ;
 int CHANNEL_TLV_LIST_END ;
 int EAGAIN ;
 scalar_t__ PFVF_STATUS_SUCCESS ;
 int qed_add_tlv (struct qed_hwfn*,int *,int ,int) ;
 int qed_send_msg2pf (struct qed_hwfn*,scalar_t__*,int) ;
 struct vfpf_first_tlv* qed_vf_pf_prep (struct qed_hwfn*,int ,int) ;
 int qed_vf_pf_req_end (struct qed_hwfn*,int) ;

int qed_vf_pf_reset(struct qed_hwfn *p_hwfn)
{
 struct qed_vf_iov *p_iov = p_hwfn->vf_iov_info;
 struct pfvf_def_resp_tlv *resp;
 struct vfpf_first_tlv *req;
 int rc;


 req = qed_vf_pf_prep(p_hwfn, CHANNEL_TLV_CLOSE, sizeof(*req));


 qed_add_tlv(p_hwfn, &p_iov->offset,
      CHANNEL_TLV_LIST_END, sizeof(struct channel_list_end_tlv));

 resp = &p_iov->pf2vf_reply->default_resp;
 rc = qed_send_msg2pf(p_hwfn, &resp->hdr.status, sizeof(*resp));
 if (rc)
  goto exit;

 if (resp->hdr.status != PFVF_STATUS_SUCCESS) {
  rc = -EAGAIN;
  goto exit;
 }

 p_hwfn->b_int_enabled = 0;

exit:
 qed_vf_pf_req_end(p_hwfn, rc);

 return rc;
}
