
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u16 ;
struct vfpf_update_coalesce {int qid; void* tx_coal; void* rx_coal; } ;
struct qed_vf_iov {TYPE_2__* pf2vf_reply; int offset; } ;
struct TYPE_5__ {int queue_id; } ;
struct qed_queue_cid {TYPE_1__ rel; } ;
struct qed_hwfn {TYPE_4__* cdev; struct qed_vf_iov* vf_iov_info; } ;
struct TYPE_7__ {scalar_t__ status; } ;
struct pfvf_def_resp_tlv {TYPE_3__ hdr; } ;
struct channel_list_end_tlv {int dummy; } ;
struct TYPE_8__ {void* tx_coalesce_usecs; void* rx_coalesce_usecs; } ;
struct TYPE_6__ {struct pfvf_def_resp_tlv default_resp; } ;


 int CHANNEL_TLV_COALESCE_UPDATE ;
 int CHANNEL_TLV_LIST_END ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,void*,void*,int ) ;
 scalar_t__ PFVF_STATUS_SUCCESS ;
 int QED_MSG_IOV ;
 int qed_add_tlv (struct qed_hwfn*,int *,int ,int) ;
 int qed_send_msg2pf (struct qed_hwfn*,scalar_t__*,int) ;
 struct vfpf_update_coalesce* qed_vf_pf_prep (struct qed_hwfn*,int ,int) ;
 int qed_vf_pf_req_end (struct qed_hwfn*,int) ;

int
qed_vf_pf_set_coalesce(struct qed_hwfn *p_hwfn,
         u16 rx_coal, u16 tx_coal, struct qed_queue_cid *p_cid)
{
 struct qed_vf_iov *p_iov = p_hwfn->vf_iov_info;
 struct vfpf_update_coalesce *req;
 struct pfvf_def_resp_tlv *resp;
 int rc;


 req = qed_vf_pf_prep(p_hwfn, CHANNEL_TLV_COALESCE_UPDATE, sizeof(*req));

 req->rx_coal = rx_coal;
 req->tx_coal = tx_coal;
 req->qid = p_cid->rel.queue_id;

 DP_VERBOSE(p_hwfn,
     QED_MSG_IOV,
     "Setting coalesce rx_coal = %d, tx_coal = %d at queue = %d\n",
     rx_coal, tx_coal, req->qid);


 qed_add_tlv(p_hwfn, &p_iov->offset, CHANNEL_TLV_LIST_END,
      sizeof(struct channel_list_end_tlv));

 resp = &p_iov->pf2vf_reply->default_resp;
 rc = qed_send_msg2pf(p_hwfn, &resp->hdr.status, sizeof(*resp));
 if (rc)
  goto exit;

 if (resp->hdr.status != PFVF_STATUS_SUCCESS)
  goto exit;

 if (rx_coal)
  p_hwfn->cdev->rx_coalesce_usecs = rx_coal;

 if (tx_coal)
  p_hwfn->cdev->tx_coalesce_usecs = tx_coal;

exit:
 qed_vf_pf_req_end(p_hwfn, rc);
 return rc;
}
