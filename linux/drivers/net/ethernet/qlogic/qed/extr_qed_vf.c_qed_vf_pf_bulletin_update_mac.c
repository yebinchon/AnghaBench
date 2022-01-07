
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct vfpf_bulletin_update_mac_tlv {int mac; } ;
struct qed_vf_iov {TYPE_1__* pf2vf_reply; int offset; } ;
struct qed_hwfn {struct qed_vf_iov* vf_iov_info; } ;
struct TYPE_4__ {int status; } ;
struct pfvf_def_resp_tlv {TYPE_2__ hdr; } ;
struct channel_list_end_tlv {int dummy; } ;
struct TYPE_3__ {struct pfvf_def_resp_tlv default_resp; } ;


 int CHANNEL_TLV_BULLETIN_UPDATE_MAC ;
 int CHANNEL_TLV_LIST_END ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int *) ;
 int EINVAL ;
 int QED_MSG_IOV ;
 int ether_addr_copy (int ,int *) ;
 int qed_add_tlv (struct qed_hwfn*,int *,int ,int) ;
 int qed_send_msg2pf (struct qed_hwfn*,int *,int) ;
 struct vfpf_bulletin_update_mac_tlv* qed_vf_pf_prep (struct qed_hwfn*,int ,int) ;
 int qed_vf_pf_req_end (struct qed_hwfn*,int) ;

int
qed_vf_pf_bulletin_update_mac(struct qed_hwfn *p_hwfn,
         u8 *p_mac)
{
 struct qed_vf_iov *p_iov = p_hwfn->vf_iov_info;
 struct vfpf_bulletin_update_mac_tlv *p_req;
 struct pfvf_def_resp_tlv *p_resp;
 int rc;

 if (!p_mac)
  return -EINVAL;


 p_req = qed_vf_pf_prep(p_hwfn, CHANNEL_TLV_BULLETIN_UPDATE_MAC,
          sizeof(*p_req));
 ether_addr_copy(p_req->mac, p_mac);
 DP_VERBOSE(p_hwfn, QED_MSG_IOV,
     "Requesting bulletin update for MAC[%pM]\n", p_mac);


 qed_add_tlv(p_hwfn, &p_iov->offset, CHANNEL_TLV_LIST_END,
      sizeof(struct channel_list_end_tlv));

 p_resp = &p_iov->pf2vf_reply->default_resp;
 rc = qed_send_msg2pf(p_hwfn, &p_resp->hdr.status, sizeof(*p_resp));
 qed_vf_pf_req_end(p_hwfn, rc);
 return rc;
}
