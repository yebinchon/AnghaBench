
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct vfpf_ucast_filter_tlv {int vlan; int mac; scalar_t__ type; scalar_t__ opcode; } ;
struct qed_iov_vf_mbx {TYPE_2__* req_virt; } ;
struct TYPE_3__ {struct qed_bulletin_content* p_virt; } ;
struct qed_vf_info {int opaque_fid; int relative_vf_id; int abs_vf_id; int vport_instance; int vport_id; struct qed_iov_vf_mbx vf_mbx; TYPE_1__ bulletin; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_filter_ucast {int opcode; int type; int is_rx_filter; int is_tx_filter; int * mac; int vlan; int vport_to_add_to; int vport_to_remove_from; } ;
struct qed_bulletin_content {int valid_bitmap; int mac; } ;
struct pfvf_def_resp_tlv {int dummy; } ;
typedef enum qed_filter_ucast_type { ____Placeholder_qed_filter_ucast_type } qed_filter_ucast_type ;
typedef enum qed_filter_opcode { ____Placeholder_qed_filter_opcode } qed_filter_opcode ;
struct TYPE_4__ {struct vfpf_ucast_filter_tlv ucast_filter; } ;


 int BIT (int ) ;
 int CHANNEL_TLV_UCAST_FILTER ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,...) ;
 int ETH_ALEN ;
 int MAC_ADDR_FORCED ;
 int PFVF_STATUS_FAILURE ;
 int PFVF_STATUS_FORCED ;
 int PFVF_STATUS_SUCCESS ;
 scalar_t__ QED_FILTER_ADD ;
 scalar_t__ QED_FILTER_MAC ;
 scalar_t__ QED_FILTER_MAC_VLAN ;
 scalar_t__ QED_FILTER_REPLACE ;
 scalar_t__ QED_FILTER_VLAN ;
 int QED_MSG_IOV ;
 int QED_SPQ_MODE_CB ;
 int VLAN_ADDR_FORCED ;
 int ether_addr_equal (int ,int *) ;
 int memcpy (int *,int ,int ) ;
 int memset (struct qed_filter_ucast*,int ,int) ;
 int qed_iov_chk_ucast (struct qed_hwfn*,int ,struct qed_filter_ucast*) ;
 int qed_iov_prepare_resp (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*,int ,int,int ) ;
 scalar_t__ qed_iov_vf_update_unicast_shadow (struct qed_hwfn*,struct qed_vf_info*,struct qed_filter_ucast*) ;
 int qed_sp_eth_filter_ucast (struct qed_hwfn*,int ,struct qed_filter_ucast*,int ,int *) ;

__attribute__((used)) static void qed_iov_vf_mbx_ucast_filter(struct qed_hwfn *p_hwfn,
     struct qed_ptt *p_ptt,
     struct qed_vf_info *vf)
{
 struct qed_bulletin_content *p_bulletin = vf->bulletin.p_virt;
 struct qed_iov_vf_mbx *mbx = &vf->vf_mbx;
 struct vfpf_ucast_filter_tlv *req;
 u8 status = PFVF_STATUS_SUCCESS;
 struct qed_filter_ucast params;
 int rc;


 memset(&params, 0, sizeof(struct qed_filter_ucast));
 req = &mbx->req_virt->ucast_filter;
 params.opcode = (enum qed_filter_opcode)req->opcode;
 params.type = (enum qed_filter_ucast_type)req->type;

 params.is_rx_filter = 1;
 params.is_tx_filter = 1;
 params.vport_to_remove_from = vf->vport_id;
 params.vport_to_add_to = vf->vport_id;
 memcpy(params.mac, req->mac, ETH_ALEN);
 params.vlan = req->vlan;

 DP_VERBOSE(p_hwfn,
     QED_MSG_IOV,
     "VF[%d]: opcode 0x%02x type 0x%02x [%s %s] [vport 0x%02x] MAC %02x:%02x:%02x:%02x:%02x:%02x, vlan 0x%04x\n",
     vf->abs_vf_id, params.opcode, params.type,
     params.is_rx_filter ? "RX" : "",
     params.is_tx_filter ? "TX" : "",
     params.vport_to_add_to,
     params.mac[0], params.mac[1],
     params.mac[2], params.mac[3],
     params.mac[4], params.mac[5], params.vlan);

 if (!vf->vport_instance) {
  DP_VERBOSE(p_hwfn,
      QED_MSG_IOV,
      "No VPORT instance available for VF[%d], failing ucast MAC configuration\n",
      vf->abs_vf_id);
  status = PFVF_STATUS_FAILURE;
  goto out;
 }


 if (qed_iov_vf_update_unicast_shadow(p_hwfn, vf, &params)) {
  status = PFVF_STATUS_FAILURE;
  goto out;
 }


 if ((p_bulletin->valid_bitmap & BIT(VLAN_ADDR_FORCED)) &&
     (params.type == QED_FILTER_VLAN ||
      params.type == QED_FILTER_MAC_VLAN)) {



  if (params.opcode == QED_FILTER_ADD ||
      params.opcode == QED_FILTER_REPLACE)
   status = PFVF_STATUS_FORCED;
  goto out;
 }

 if ((p_bulletin->valid_bitmap & BIT(MAC_ADDR_FORCED)) &&
     (params.type == QED_FILTER_MAC ||
      params.type == QED_FILTER_MAC_VLAN)) {
  if (!ether_addr_equal(p_bulletin->mac, params.mac) ||
      (params.opcode != QED_FILTER_ADD &&
       params.opcode != QED_FILTER_REPLACE))
   status = PFVF_STATUS_FORCED;
  goto out;
 }

 rc = qed_iov_chk_ucast(p_hwfn, vf->relative_vf_id, &params);
 if (rc) {
  status = PFVF_STATUS_FAILURE;
  goto out;
 }

 rc = qed_sp_eth_filter_ucast(p_hwfn, vf->opaque_fid, &params,
         QED_SPQ_MODE_CB, ((void*)0));
 if (rc)
  status = PFVF_STATUS_FAILURE;

out:
 qed_iov_prepare_resp(p_hwfn, p_ptt, vf, CHANNEL_TLV_UCAST_FILTER,
        sizeof(struct pfvf_def_resp_tlv), status);
}
