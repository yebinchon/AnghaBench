
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int flags; int op_code; } ;
struct iscsi_conn_update_ramrod_params {void* exp_stat_sn; void* first_seq_length; void* max_send_pdu_length; void* max_recv_pdu_length; void* max_seq_size; int flags; void* fw_cid; int conn_id; TYPE_3__ hdr; } ;
struct TYPE_5__ {struct iscsi_conn_update_ramrod_params iscsi_conn_update; } ;
struct qed_spq_entry {TYPE_2__ ramrod; } ;
struct qed_spq_comp_cb {int dummy; } ;
struct qed_sp_init_data {int comp_mode; struct qed_spq_comp_cb* p_comp_data; int opaque_fid; int cid; } ;
struct qed_iscsi_conn {int exp_stat_sn; int first_seq_length; int max_send_pdu_length; int max_recv_pdu_length; int max_seq_size; int update_flag; int icid; int conn_id; int layer_code; } ;
struct TYPE_4__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;
typedef int init_data ;
typedef enum spq_mode { ____Placeholder_spq_mode } spq_mode ;


 int EINVAL ;
 int ISCSI_RAMROD_CMD_ID_UPDATE_CONN ;
 int ISCSI_SLOW_PATH_HDR_LAYER_CODE ;
 int PROTOCOLID_ISCSI ;
 int SET_FIELD (int ,int ,int ) ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

__attribute__((used)) static int qed_sp_iscsi_conn_update(struct qed_hwfn *p_hwfn,
        struct qed_iscsi_conn *p_conn,
        enum spq_mode comp_mode,
        struct qed_spq_comp_cb *p_comp_addr)
{
 struct iscsi_conn_update_ramrod_params *p_ramrod = ((void*)0);
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 int rc = -EINVAL;
 u32 dval;


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = p_conn->icid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = comp_mode;
 init_data.p_comp_data = p_comp_addr;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     ISCSI_RAMROD_CMD_ID_UPDATE_CONN,
     PROTOCOLID_ISCSI, &init_data);
 if (rc)
  return rc;

 p_ramrod = &p_ent->ramrod.iscsi_conn_update;
 p_ramrod->hdr.op_code = ISCSI_RAMROD_CMD_ID_UPDATE_CONN;
 SET_FIELD(p_ramrod->hdr.flags,
    ISCSI_SLOW_PATH_HDR_LAYER_CODE, p_conn->layer_code);

 p_ramrod->conn_id = cpu_to_le16(p_conn->conn_id);
 p_ramrod->fw_cid = cpu_to_le32(p_conn->icid);
 p_ramrod->flags = p_conn->update_flag;
 p_ramrod->max_seq_size = cpu_to_le32(p_conn->max_seq_size);
 dval = p_conn->max_recv_pdu_length;
 p_ramrod->max_recv_pdu_length = cpu_to_le32(dval);
 dval = p_conn->max_send_pdu_length;
 p_ramrod->max_send_pdu_length = cpu_to_le32(dval);
 dval = p_conn->first_seq_length;
 p_ramrod->first_seq_length = cpu_to_le32(dval);
 p_ramrod->exp_stat_sn = cpu_to_le32(p_conn->exp_stat_sn);

 return qed_spq_post(p_hwfn, p_ent, ((void*)0));
}
