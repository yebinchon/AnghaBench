
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfpf_update_tunn_param_tlv {int update_tun_cls; int ipgre_clss; int l2gre_clss; int ipgeneve_clss; int geneve_port; int update_geneve_port; int l2geneve_clss; int vxlan_port; int update_vxlan_port; int vxlan_clss; } ;
struct qed_vf_iov {TYPE_2__* pf2vf_reply; int offset; } ;
struct qed_tunnel_info {int ip_gre; int l2_gre; int ip_geneve; int geneve_port; int l2_geneve; int vxlan_port; int vxlan; scalar_t__ b_update_tx_cls; scalar_t__ b_update_rx_cls; } ;
struct qed_hwfn {struct qed_vf_iov* vf_iov_info; TYPE_1__* cdev; } ;
struct TYPE_6__ {scalar_t__ status; } ;
struct pfvf_update_tunn_param_tlv {TYPE_3__ hdr; } ;
struct channel_list_end_tlv {int dummy; } ;
struct TYPE_5__ {struct pfvf_update_tunn_param_tlv tunn_param_resp; } ;
struct TYPE_4__ {struct qed_tunnel_info tunnel; } ;


 int CHANNEL_TLV_LIST_END ;
 int CHANNEL_TLV_UPDATE_TUNN_PARAM ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*) ;
 int EINVAL ;
 scalar_t__ PFVF_STATUS_SUCCESS ;
 int QED_MODE_IPGENEVE_TUNN ;
 int QED_MODE_IPGRE_TUNN ;
 int QED_MODE_L2GENEVE_TUNN ;
 int QED_MODE_L2GRE_TUNN ;
 int QED_MODE_VXLAN_TUNN ;
 int QED_MSG_IOV ;
 int __qed_vf_prep_tunn_req_tlv (struct vfpf_update_tunn_param_tlv*,int *,int ,int *) ;
 int qed_add_tlv (struct qed_hwfn*,int *,int ,int) ;
 int qed_send_msg2pf (struct qed_hwfn*,scalar_t__*,int) ;
 struct vfpf_update_tunn_param_tlv* qed_vf_pf_prep (struct qed_hwfn*,int ,int) ;
 int qed_vf_pf_req_end (struct qed_hwfn*,int) ;
 int qed_vf_prep_tunn_req_tlv (struct vfpf_update_tunn_param_tlv*,int *,int ,int *,int *,int *,int *) ;
 int qed_vf_update_tunn_param (struct qed_hwfn*,struct qed_tunnel_info*,struct pfvf_update_tunn_param_tlv*) ;

int qed_vf_pf_tunnel_param_update(struct qed_hwfn *p_hwfn,
      struct qed_tunnel_info *p_src)
{
 struct qed_tunnel_info *p_tun = &p_hwfn->cdev->tunnel;
 struct qed_vf_iov *p_iov = p_hwfn->vf_iov_info;
 struct pfvf_update_tunn_param_tlv *p_resp;
 struct vfpf_update_tunn_param_tlv *p_req;
 int rc;

 p_req = qed_vf_pf_prep(p_hwfn, CHANNEL_TLV_UPDATE_TUNN_PARAM,
          sizeof(*p_req));

 if (p_src->b_update_rx_cls && p_src->b_update_tx_cls)
  p_req->update_tun_cls = 1;

 qed_vf_prep_tunn_req_tlv(p_req, &p_src->vxlan, QED_MODE_VXLAN_TUNN,
     &p_req->vxlan_clss, &p_src->vxlan_port,
     &p_req->update_vxlan_port,
     &p_req->vxlan_port);
 qed_vf_prep_tunn_req_tlv(p_req, &p_src->l2_geneve,
     QED_MODE_L2GENEVE_TUNN,
     &p_req->l2geneve_clss, &p_src->geneve_port,
     &p_req->update_geneve_port,
     &p_req->geneve_port);
 __qed_vf_prep_tunn_req_tlv(p_req, &p_src->ip_geneve,
       QED_MODE_IPGENEVE_TUNN,
       &p_req->ipgeneve_clss);
 __qed_vf_prep_tunn_req_tlv(p_req, &p_src->l2_gre,
       QED_MODE_L2GRE_TUNN, &p_req->l2gre_clss);
 __qed_vf_prep_tunn_req_tlv(p_req, &p_src->ip_gre,
       QED_MODE_IPGRE_TUNN, &p_req->ipgre_clss);


 qed_add_tlv(p_hwfn, &p_iov->offset,
      CHANNEL_TLV_LIST_END,
      sizeof(struct channel_list_end_tlv));

 p_resp = &p_iov->pf2vf_reply->tunn_param_resp;
 rc = qed_send_msg2pf(p_hwfn, &p_resp->hdr.status, sizeof(*p_resp));

 if (rc)
  goto exit;

 if (p_resp->hdr.status != PFVF_STATUS_SUCCESS) {
  DP_VERBOSE(p_hwfn, QED_MSG_IOV,
      "Failed to update tunnel parameters\n");
  rc = -EINVAL;
 }

 qed_vf_update_tunn_param(p_hwfn, p_tun, p_resp);
exit:
 qed_vf_pf_req_end(p_hwfn, rc);
 return rc;
}
