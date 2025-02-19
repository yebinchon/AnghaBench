
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u16 ;
struct rx_update_gft_filter_data {int rx_qid_valid; int filter_action; scalar_t__ flow_id; scalar_t__ flow_id_valid; void* vport_id; void* rx_qid; void* pkt_hdr_length; int pkt_hdr_addr; } ;
struct TYPE_4__ {struct rx_update_gft_filter_data rx_update_gft; } ;
struct qed_spq_entry {TYPE_2__ ramrod; } ;
struct qed_spq_comp_cb {int dummy; } ;
struct qed_sp_init_data {int comp_mode; struct qed_spq_comp_cb* p_comp_data; int opaque_fid; int cid; } ;
struct qed_ntuple_filter_params {scalar_t__ qid; int length; scalar_t__ addr; scalar_t__ b_is_add; int vport_id; scalar_t__ b_is_drop; } ;
struct TYPE_3__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;
typedef int init_data ;


 int DMA_REGPAIR_LE (int ,scalar_t__) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,scalar_t__,int ,char*,int ,int ) ;
 int EINVAL ;
 int ETH_GFT_TRASHCAN_VPORT ;
 int ETH_RAMROD_GFT_UPDATE_FILTER ;
 int GFT_ADD_FILTER ;
 int GFT_DELETE_FILTER ;
 int PROTOCOLID_ETH ;
 int QED_MSG_SP ;
 scalar_t__ QED_RFS_NTUPLE_QID_RSS ;
 int QED_SPQ_MODE_CB ;
 int QED_SPQ_MODE_EBLOCK ;
 void* cpu_to_le16 (int ) ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_fw_l2_queue (struct qed_hwfn*,scalar_t__,int *) ;
 int qed_fw_vport (struct qed_hwfn*,int ,scalar_t__*) ;
 int qed_sp_destroy_request (struct qed_hwfn*,struct qed_spq_entry*) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_get_cid (struct qed_hwfn*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

int
qed_configure_rfs_ntuple_filter(struct qed_hwfn *p_hwfn,
    struct qed_spq_comp_cb *p_cb,
    struct qed_ntuple_filter_params *p_params)
{
 struct rx_update_gft_filter_data *p_ramrod = ((void*)0);
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 u16 abs_rx_q_id = 0;
 u8 abs_vport_id = 0;
 int rc = -EINVAL;


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = qed_spq_get_cid(p_hwfn);

 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;

 if (p_cb) {
  init_data.comp_mode = QED_SPQ_MODE_CB;
  init_data.p_comp_data = p_cb;
 } else {
  init_data.comp_mode = QED_SPQ_MODE_EBLOCK;
 }

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     ETH_RAMROD_GFT_UPDATE_FILTER,
     PROTOCOLID_ETH, &init_data);
 if (rc)
  return rc;

 p_ramrod = &p_ent->ramrod.rx_update_gft;

 DMA_REGPAIR_LE(p_ramrod->pkt_hdr_addr, p_params->addr);
 p_ramrod->pkt_hdr_length = cpu_to_le16(p_params->length);

 if (p_params->b_is_drop) {
  p_ramrod->vport_id = cpu_to_le16(ETH_GFT_TRASHCAN_VPORT);
 } else {
  rc = qed_fw_vport(p_hwfn, p_params->vport_id, &abs_vport_id);
  if (rc)
   goto err;

  if (p_params->qid != QED_RFS_NTUPLE_QID_RSS) {
   rc = qed_fw_l2_queue(p_hwfn, p_params->qid,
          &abs_rx_q_id);
   if (rc)
    goto err;

   p_ramrod->rx_qid_valid = 1;
   p_ramrod->rx_qid = cpu_to_le16(abs_rx_q_id);
  }

  p_ramrod->vport_id = cpu_to_le16((u16)abs_vport_id);
 }

 p_ramrod->flow_id_valid = 0;
 p_ramrod->flow_id = 0;
 p_ramrod->filter_action = p_params->b_is_add ? GFT_ADD_FILTER
     : GFT_DELETE_FILTER;

 DP_VERBOSE(p_hwfn, QED_MSG_SP,
     "V[%0x], Q[%04x] - %s filter from 0x%llx [length %04xb]\n",
     abs_vport_id, abs_rx_q_id,
     p_params->b_is_add ? "Adding" : "Removing",
     (u64)p_params->addr, p_params->length);

 return qed_spq_post(p_hwfn, p_ent, ((void*)0));

err:
 qed_sp_destroy_request(p_hwfn, p_ent);
 return rc;
}
