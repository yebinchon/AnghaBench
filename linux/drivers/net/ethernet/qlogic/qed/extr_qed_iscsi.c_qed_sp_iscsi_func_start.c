
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
typedef int u16 ;
struct scsi_init_func_queues {scalar_t__ num_queues; size_t queue_relative_offset; size_t bdq_resource_id; int q_validity; scalar_t__* bdq_pbl_num_entries; void* rq_buffer_size; void** bdq_xon_threshold; void** bdq_xoff_threshold; int * bdq_pbl_base_address; void** cq_cmdq_sb_num_arr; int cmdq_sb_pi; int cq_sb_pi; void* cmdq_num_entries; void* cq_num_entries; int glbl_q_params_addr; } ;
struct TYPE_9__ {int max_fin_rt; void* tx_sws_timer; int two_msl_timer; } ;
struct TYPE_15__ {int flags; } ;
struct TYPE_14__ {void* num_tasks; int log_page_size; } ;
struct TYPE_13__ {int op_code; int flags; } ;
struct iscsi_spe_func_init {TYPE_7__ debug_mode; TYPE_6__ func_params; scalar_t__ ll2_rx_queue_id; int num_uhq_pages_in_ring; int num_r2tq_pages_in_ring; int num_sq_pages_in_ring; void* half_way_close_timeout; TYPE_5__ hdr; struct scsi_init_func_queues q_params; } ;
struct iscsi_init_ramrod_params {TYPE_1__ tcp_init; struct iscsi_spe_func_init iscsi_init_spe; } ;
struct TYPE_11__ {struct iscsi_init_ramrod_params iscsi_init; } ;
struct qed_spq_entry {TYPE_3__ ramrod; } ;
struct qed_spq_comp_cb {int dummy; } ;
struct qed_sp_init_data {int comp_mode; struct qed_spq_comp_cb* p_comp_data; int opaque_fid; int cid; } ;
struct qed_iscsi_pf_params {scalar_t__ num_queues; int max_fin_rt; int tx_sws_timer; int two_msl_timer; scalar_t__ is_target; int rq_buffer_size; int * bdq_xon_threshold; int * bdq_xoff_threshold; scalar_t__* bdq_pbl_num_entries; int * bdq_pbl_base_addr; int gl_cmd_pi; int gl_rq_pi; int cmdq_num_entries; int cq_num_entries; int glbl_q_params_addr; int debug_mode; int num_tasks; int log_page_size; scalar_t__ ll2_ooo_queue_id; int num_uhq_pages_in_ring; int num_r2tq_pages_in_ring; int num_sq_pages_in_ring; int half_way_close_timeout; } ;
struct TYPE_16__ {scalar_t__* feat_num; scalar_t__* resc_start; int opaque_fid; } ;
struct TYPE_12__ {struct qed_iscsi_pf_params iscsi_pf_params; } ;
struct qed_hwfn {TYPE_2__* p_iscsi_info; TYPE_8__ hw_info; TYPE_4__ pf_params; } ;
typedef int iscsi_event_cb_t ;
typedef int init_data ;
typedef enum spq_mode { ____Placeholder_spq_mode } spq_mode ;
struct TYPE_10__ {int event_cb; void* event_context; } ;


 size_t BDQ_ID_IMM_DATA ;
 size_t BDQ_ID_RQ ;
 int DMA_REGPAIR_LE (int ,int ) ;
 int DP_ERR (struct qed_hwfn*,char*,scalar_t__,scalar_t__) ;
 int EINVAL ;
 int ISCSI_RAMROD_CMD_ID_INIT_FUNC ;
 int ISCSI_SLOW_PATH_HDR_LAYER_CODE ;
 int ISCSI_SLOW_PATH_LAYER_CODE ;
 int PROTOCOLID_ISCSI ;
 int QED_BDQ ;
 size_t QED_CMDQS_CQS ;
 size_t QED_ISCSI_CQ ;
 size_t QED_LL2_QUEUE ;
 scalar_t__ RESC_START (struct qed_hwfn*,int ) ;
 int SCSI_INIT_FUNC_QUEUES_CMD_VALID ;
 int SCSI_INIT_FUNC_QUEUES_IMM_DATA_VALID ;
 int SCSI_INIT_FUNC_QUEUES_RQ_VALID ;
 int SET_FIELD (int ,int ,int) ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_get_igu_sb_id (struct qed_hwfn*,size_t) ;
 int qed_iscsi_async_event ;
 int qed_sp_destroy_request (struct qed_hwfn*,struct qed_spq_entry*) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_get_cid (struct qed_hwfn*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;
 int qed_spq_register_async_cb (struct qed_hwfn*,int ,int ) ;

__attribute__((used)) static int
qed_sp_iscsi_func_start(struct qed_hwfn *p_hwfn,
   enum spq_mode comp_mode,
   struct qed_spq_comp_cb *p_comp_addr,
   void *event_context, iscsi_event_cb_t async_event_cb)
{
 struct iscsi_init_ramrod_params *p_ramrod = ((void*)0);
 struct scsi_init_func_queues *p_queue = ((void*)0);
 struct qed_iscsi_pf_params *p_params = ((void*)0);
 struct iscsi_spe_func_init *p_init = ((void*)0);
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 int rc = 0;
 u32 dval;
 u16 val;
 u8 i;


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = qed_spq_get_cid(p_hwfn);
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = comp_mode;
 init_data.p_comp_data = p_comp_addr;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     ISCSI_RAMROD_CMD_ID_INIT_FUNC,
     PROTOCOLID_ISCSI, &init_data);
 if (rc)
  return rc;

 p_ramrod = &p_ent->ramrod.iscsi_init;
 p_init = &p_ramrod->iscsi_init_spe;
 p_params = &p_hwfn->pf_params.iscsi_pf_params;
 p_queue = &p_init->q_params;


 if (p_params->num_queues > p_hwfn->hw_info.feat_num[QED_ISCSI_CQ]) {
  DP_ERR(p_hwfn,
         "Cannot satisfy CQ amount. Queues requested %d, CQs available %d. Aborting function start\n",
         p_params->num_queues,
         p_hwfn->hw_info.feat_num[QED_ISCSI_CQ]);
  qed_sp_destroy_request(p_hwfn, p_ent);
  return -EINVAL;
 }

 SET_FIELD(p_init->hdr.flags,
    ISCSI_SLOW_PATH_HDR_LAYER_CODE, ISCSI_SLOW_PATH_LAYER_CODE);
 p_init->hdr.op_code = ISCSI_RAMROD_CMD_ID_INIT_FUNC;

 val = p_params->half_way_close_timeout;
 p_init->half_way_close_timeout = cpu_to_le16(val);
 p_init->num_sq_pages_in_ring = p_params->num_sq_pages_in_ring;
 p_init->num_r2tq_pages_in_ring = p_params->num_r2tq_pages_in_ring;
 p_init->num_uhq_pages_in_ring = p_params->num_uhq_pages_in_ring;
 p_init->ll2_rx_queue_id = p_hwfn->hw_info.resc_start[QED_LL2_QUEUE] +
      p_params->ll2_ooo_queue_id;

 p_init->func_params.log_page_size = p_params->log_page_size;
 val = p_params->num_tasks;
 p_init->func_params.num_tasks = cpu_to_le16(val);
 p_init->debug_mode.flags = p_params->debug_mode;

 DMA_REGPAIR_LE(p_queue->glbl_q_params_addr,
         p_params->glbl_q_params_addr);

 val = p_params->cq_num_entries;
 p_queue->cq_num_entries = cpu_to_le16(val);
 val = p_params->cmdq_num_entries;
 p_queue->cmdq_num_entries = cpu_to_le16(val);
 p_queue->num_queues = p_params->num_queues;
 dval = (u8)p_hwfn->hw_info.resc_start[QED_CMDQS_CQS];
 p_queue->queue_relative_offset = (u8)dval;
 p_queue->cq_sb_pi = p_params->gl_rq_pi;
 p_queue->cmdq_sb_pi = p_params->gl_cmd_pi;

 for (i = 0; i < p_params->num_queues; i++) {
  val = qed_get_igu_sb_id(p_hwfn, i);
  p_queue->cq_cmdq_sb_num_arr[i] = cpu_to_le16(val);
 }

 p_queue->bdq_resource_id = (u8)RESC_START(p_hwfn, QED_BDQ);

 DMA_REGPAIR_LE(p_queue->bdq_pbl_base_address[BDQ_ID_RQ],
         p_params->bdq_pbl_base_addr[BDQ_ID_RQ]);
 p_queue->bdq_pbl_num_entries[BDQ_ID_RQ] =
     p_params->bdq_pbl_num_entries[BDQ_ID_RQ];
 val = p_params->bdq_xoff_threshold[BDQ_ID_RQ];
 p_queue->bdq_xoff_threshold[BDQ_ID_RQ] = cpu_to_le16(val);
 val = p_params->bdq_xon_threshold[BDQ_ID_RQ];
 p_queue->bdq_xon_threshold[BDQ_ID_RQ] = cpu_to_le16(val);

 DMA_REGPAIR_LE(p_queue->bdq_pbl_base_address[BDQ_ID_IMM_DATA],
         p_params->bdq_pbl_base_addr[BDQ_ID_IMM_DATA]);
 p_queue->bdq_pbl_num_entries[BDQ_ID_IMM_DATA] =
     p_params->bdq_pbl_num_entries[BDQ_ID_IMM_DATA];
 val = p_params->bdq_xoff_threshold[BDQ_ID_IMM_DATA];
 p_queue->bdq_xoff_threshold[BDQ_ID_IMM_DATA] = cpu_to_le16(val);
 val = p_params->bdq_xon_threshold[BDQ_ID_IMM_DATA];
 p_queue->bdq_xon_threshold[BDQ_ID_IMM_DATA] = cpu_to_le16(val);
 val = p_params->rq_buffer_size;
 p_queue->rq_buffer_size = cpu_to_le16(val);
 if (p_params->is_target) {
  SET_FIELD(p_queue->q_validity,
     SCSI_INIT_FUNC_QUEUES_RQ_VALID, 1);
  if (p_queue->bdq_pbl_num_entries[BDQ_ID_IMM_DATA])
   SET_FIELD(p_queue->q_validity,
      SCSI_INIT_FUNC_QUEUES_IMM_DATA_VALID, 1);
  SET_FIELD(p_queue->q_validity,
     SCSI_INIT_FUNC_QUEUES_CMD_VALID, 1);
 } else {
  SET_FIELD(p_queue->q_validity,
     SCSI_INIT_FUNC_QUEUES_RQ_VALID, 1);
 }
 p_ramrod->tcp_init.two_msl_timer = cpu_to_le32(p_params->two_msl_timer);
 val = p_params->tx_sws_timer;
 p_ramrod->tcp_init.tx_sws_timer = cpu_to_le16(val);
 p_ramrod->tcp_init.max_fin_rt = p_params->max_fin_rt;

 p_hwfn->p_iscsi_info->event_context = event_context;
 p_hwfn->p_iscsi_info->event_cb = async_event_cb;

 qed_spq_register_async_cb(p_hwfn, PROTOCOLID_ISCSI,
      qed_iscsi_async_event);

 return qed_spq_post(p_hwfn, p_ent, ((void*)0));
}
