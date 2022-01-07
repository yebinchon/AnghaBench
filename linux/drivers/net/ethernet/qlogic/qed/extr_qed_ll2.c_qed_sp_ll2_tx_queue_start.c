
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct core_tx_start_ramrod_data {int stats_en; int gsi_offload_flag; void* conn_type; void* qm_pq_id; void* pbl_size; int pbl_base_addr; int stats_id; void* mtu; int sb_index; void* sb_id; } ;
struct TYPE_4__ {struct core_tx_start_ramrod_data core_tx_queue_start; } ;
struct qed_spq_entry {TYPE_1__ ramrod; } ;
struct qed_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct qed_ll2_tx_queue {int db_msg; int doorbell_addr; int txq_chain; int tx_sb_index; } ;
struct TYPE_6__ {int conn_type; int tx_tc; int gsi_enable; int mtu; } ;
struct qed_ll2_info {int tx_stats_en; TYPE_3__ input; int tx_stats_id; int cid; struct qed_ll2_tx_queue tx_queue; } ;
struct TYPE_5__ {int personality; int opaque_fid; } ;
struct qed_hwfn {int cdev; TYPE_2__ hw_info; } ;
typedef int init_data ;
typedef enum qed_ll2_conn_type { ____Placeholder_qed_ll2_conn_type } qed_ll2_conn_type ;


 int CORE_RAMROD_TX_QUEUE_START ;
 int DB_REC_KERNEL ;
 int DB_REC_WIDTH_32B ;
 int DMA_REGPAIR_LE (int ,int ) ;
 int DP_NOTICE (struct qed_hwfn*,char*,int) ;
 int EINVAL ;

 int PQ_FLAGS_LB ;
 int PQ_FLAGS_OFLD ;
 int PQ_FLAGS_OOO ;
 int PROTOCOLID_CORE ;
 void* PROTOCOLID_ETH ;
 void* PROTOCOLID_FCOE ;
 void* PROTOCOLID_ISCSI ;
 void* PROTOCOLID_IWARP ;
 void* PROTOCOLID_ROCE ;

 int QED_LL2_TX_REGISTERED (struct qed_ll2_info*) ;





 int QED_PCI_ISCSI ;
 int QED_SPQ_MODE_EBLOCK ;
 void* cpu_to_le16 (int ) ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_chain_get_page_cnt (int *) ;
 int qed_chain_get_pbl_phys (int *) ;
 int qed_db_recovery_add (int ,int ,int *,int ,int ) ;
 int qed_get_cm_pq_idx (struct qed_hwfn*,int ) ;
 int qed_int_get_sp_sb_id (struct qed_hwfn*) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

__attribute__((used)) static int qed_sp_ll2_tx_queue_start(struct qed_hwfn *p_hwfn,
         struct qed_ll2_info *p_ll2_conn)
{
 enum qed_ll2_conn_type conn_type = p_ll2_conn->input.conn_type;
 struct qed_ll2_tx_queue *p_tx = &p_ll2_conn->tx_queue;
 struct core_tx_start_ramrod_data *p_ramrod = ((void*)0);
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 u16 pq_id = 0, pbl_size;
 int rc = -EINVAL;

 if (!QED_LL2_TX_REGISTERED(p_ll2_conn))
  return 0;

 if (p_ll2_conn->input.conn_type == 129)
  p_ll2_conn->tx_stats_en = 0;
 else
  p_ll2_conn->tx_stats_en = 1;


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = p_ll2_conn->cid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     CORE_RAMROD_TX_QUEUE_START,
     PROTOCOLID_CORE, &init_data);
 if (rc)
  return rc;

 p_ramrod = &p_ent->ramrod.core_tx_queue_start;

 p_ramrod->sb_id = cpu_to_le16(qed_int_get_sp_sb_id(p_hwfn));
 p_ramrod->sb_index = p_tx->tx_sb_index;
 p_ramrod->mtu = cpu_to_le16(p_ll2_conn->input.mtu);
 p_ramrod->stats_en = p_ll2_conn->tx_stats_en;
 p_ramrod->stats_id = p_ll2_conn->tx_stats_id;

 DMA_REGPAIR_LE(p_ramrod->pbl_base_addr,
         qed_chain_get_pbl_phys(&p_tx->txq_chain));
 pbl_size = qed_chain_get_page_cnt(&p_tx->txq_chain);
 p_ramrod->pbl_size = cpu_to_le16(pbl_size);

 switch (p_ll2_conn->input.tx_tc) {
 case 133:
  pq_id = qed_get_cm_pq_idx(p_hwfn, PQ_FLAGS_LB);
  break;
 case 134:
  pq_id = qed_get_cm_pq_idx(p_hwfn, PQ_FLAGS_OOO);
  break;
 default:
  pq_id = qed_get_cm_pq_idx(p_hwfn, PQ_FLAGS_OFLD);
  break;
 }

 p_ramrod->qm_pq_id = cpu_to_le16(pq_id);

 switch (conn_type) {
 case 132:
  p_ramrod->conn_type = PROTOCOLID_FCOE;
  break;
 case 131:
  p_ramrod->conn_type = PROTOCOLID_ISCSI;
  break;
 case 128:
  p_ramrod->conn_type = PROTOCOLID_ROCE;
  break;
 case 130:
  p_ramrod->conn_type = PROTOCOLID_IWARP;
  break;
 case 129:
  if (p_hwfn->hw_info.personality == QED_PCI_ISCSI)
   p_ramrod->conn_type = PROTOCOLID_ISCSI;
  else
   p_ramrod->conn_type = PROTOCOLID_IWARP;
  break;
 default:
  p_ramrod->conn_type = PROTOCOLID_ETH;
  DP_NOTICE(p_hwfn, "Unknown connection type: %d\n", conn_type);
 }

 p_ramrod->gsi_offload_flag = p_ll2_conn->input.gsi_enable;

 rc = qed_spq_post(p_hwfn, p_ent, ((void*)0));
 if (rc)
  return rc;

 rc = qed_db_recovery_add(p_hwfn->cdev, p_tx->doorbell_addr,
     &p_tx->db_msg, DB_REC_WIDTH_32B,
     DB_REC_KERNEL);
 return rc;
}
