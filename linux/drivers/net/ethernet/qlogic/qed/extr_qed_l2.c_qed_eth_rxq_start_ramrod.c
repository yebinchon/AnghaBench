
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct rx_queue_start_ramrod_data {int complete_event_flg; int vf_rx_prod_use_zone_a; int vf_rx_prod_index; int cqe_pbl_addr; void* num_of_pbl_pages; int bd_base; void* bd_max_bytes; scalar_t__ complete_cqe_flg; void* rx_queue_id; int stats_counter_id; int vport_id; int sb_index; void* sb_id; } ;
struct TYPE_3__ {struct rx_queue_start_ramrod_data rx_queue_start; } ;
struct qed_spq_entry {TYPE_1__ ramrod; } ;
struct qed_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct TYPE_4__ {int queue_id; int stats_id; int vport_id; } ;
struct qed_queue_cid {scalar_t__ vfid; int vf_legacy; int vf_qid; TYPE_2__ abs; int sb_idx; int sb_igu_id; int opaque_fid; int cid; } ;
struct qed_hwfn {int dummy; } ;
typedef int init_data ;
typedef int dma_addr_t ;


 int DMA_REGPAIR_LE (int ,int ) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,char*,int ,...) ;
 int EINVAL ;
 int ETH_RAMROD_RX_QUEUE_START ;
 int PROTOCOLID_ETH ;
 int QED_MSG_SP ;
 int QED_QCID_LEGACY_VF_RX_PROD ;
 scalar_t__ QED_QUEUE_CID_SELF ;
 int QED_SPQ_MODE_EBLOCK ;
 void* cpu_to_le16 (int ) ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

int qed_eth_rxq_start_ramrod(struct qed_hwfn *p_hwfn,
        struct qed_queue_cid *p_cid,
        u16 bd_max_bytes,
        dma_addr_t bd_chain_phys_addr,
        dma_addr_t cqe_pbl_addr, u16 cqe_pbl_size)
{
 struct rx_queue_start_ramrod_data *p_ramrod = ((void*)0);
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 int rc = -EINVAL;

 DP_VERBOSE(p_hwfn, QED_MSG_SP,
     "opaque_fid=0x%x, cid=0x%x, rx_qzone=0x%x, vport_id=0x%x, sb_id=0x%x\n",
     p_cid->opaque_fid, p_cid->cid,
     p_cid->abs.queue_id, p_cid->abs.vport_id, p_cid->sb_igu_id);


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = p_cid->cid;
 init_data.opaque_fid = p_cid->opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     ETH_RAMROD_RX_QUEUE_START,
     PROTOCOLID_ETH, &init_data);
 if (rc)
  return rc;

 p_ramrod = &p_ent->ramrod.rx_queue_start;

 p_ramrod->sb_id = cpu_to_le16(p_cid->sb_igu_id);
 p_ramrod->sb_index = p_cid->sb_idx;
 p_ramrod->vport_id = p_cid->abs.vport_id;
 p_ramrod->stats_counter_id = p_cid->abs.stats_id;
 p_ramrod->rx_queue_id = cpu_to_le16(p_cid->abs.queue_id);
 p_ramrod->complete_cqe_flg = 0;
 p_ramrod->complete_event_flg = 1;

 p_ramrod->bd_max_bytes = cpu_to_le16(bd_max_bytes);
 DMA_REGPAIR_LE(p_ramrod->bd_base, bd_chain_phys_addr);

 p_ramrod->num_of_pbl_pages = cpu_to_le16(cqe_pbl_size);
 DMA_REGPAIR_LE(p_ramrod->cqe_pbl_addr, cqe_pbl_addr);

 if (p_cid->vfid != QED_QUEUE_CID_SELF) {
  bool b_legacy_vf = !!(p_cid->vf_legacy &
          QED_QCID_LEGACY_VF_RX_PROD);

  p_ramrod->vf_rx_prod_index = p_cid->vf_qid;
  DP_VERBOSE(p_hwfn, QED_MSG_SP,
      "Queue%s is meant for VF rxq[%02x]\n",
      b_legacy_vf ? " [legacy]" : "", p_cid->vf_qid);
  p_ramrod->vf_rx_prod_use_zone_a = b_legacy_vf;
 }

 return qed_spq_post(p_hwfn, p_ent, ((void*)0));
}
