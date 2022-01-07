
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct vfpf_bulletin_update_mac_tlv {int mac; } ;
struct TYPE_4__ {int is_trusted_configured; } ;
struct qed_iov_vf_mbx {TYPE_2__* req_virt; } ;
struct TYPE_6__ {struct qed_bulletin_content* p_virt; } ;
struct qed_vf_info {int abs_vf_id; TYPE_1__ p_vf_info; struct qed_iov_vf_mbx vf_mbx; TYPE_3__ bulletin; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_bulletin_content {int mac; } ;
struct pfvf_def_resp_tlv {int dummy; } ;
struct TYPE_5__ {struct vfpf_bulletin_update_mac_tlv bulletin_update_mac; } ;


 int CHANNEL_TLV_BULLETIN_UPDATE_MAC ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,...) ;
 int EINVAL ;
 int PFVF_STATUS_NOT_SUPPORTED ;
 int PFVF_STATUS_SUCCESS ;
 int QED_MSG_IOV ;
 int ether_addr_copy (int ,int ) ;
 int qed_iov_prepare_resp (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*,int ,int,int ) ;

__attribute__((used)) static int
qed_iov_vf_pf_bulletin_update_mac(struct qed_hwfn *p_hwfn,
      struct qed_ptt *p_ptt,
      struct qed_vf_info *p_vf)
{
 struct qed_bulletin_content *p_bulletin = p_vf->bulletin.p_virt;
 struct qed_iov_vf_mbx *mbx = &p_vf->vf_mbx;
 struct vfpf_bulletin_update_mac_tlv *p_req;
 u8 status = PFVF_STATUS_SUCCESS;
 int rc = 0;

 if (!p_vf->p_vf_info.is_trusted_configured) {
  DP_VERBOSE(p_hwfn,
      QED_MSG_IOV,
      "Blocking bulletin update request from untrusted VF[%d]\n",
      p_vf->abs_vf_id);
  status = PFVF_STATUS_NOT_SUPPORTED;
  rc = -EINVAL;
  goto send_status;
 }

 p_req = &mbx->req_virt->bulletin_update_mac;
 ether_addr_copy(p_bulletin->mac, p_req->mac);
 DP_VERBOSE(p_hwfn, QED_MSG_IOV,
     "Updated bulletin of VF[%d] with requested MAC[%pM]\n",
     p_vf->abs_vf_id, p_req->mac);

send_status:
 qed_iov_prepare_resp(p_hwfn, p_ptt, p_vf,
        CHANNEL_TLV_BULLETIN_UPDATE_MAC,
        sizeof(struct pfvf_def_resp_tlv), status);
 return rc;
}
