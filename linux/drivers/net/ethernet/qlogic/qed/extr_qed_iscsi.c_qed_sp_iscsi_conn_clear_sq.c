
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_slow_path_hdr {int flags; int op_code; } ;
struct TYPE_4__ {struct iscsi_slow_path_hdr iscsi_empty; } ;
struct qed_spq_entry {TYPE_2__ ramrod; } ;
struct qed_spq_comp_cb {int dummy; } ;
struct qed_sp_init_data {int comp_mode; struct qed_spq_comp_cb* p_comp_data; int opaque_fid; int cid; } ;
struct qed_iscsi_conn {int layer_code; int icid; } ;
struct TYPE_3__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;
typedef int init_data ;
typedef enum spq_mode { ____Placeholder_spq_mode } spq_mode ;


 int EINVAL ;
 int ISCSI_RAMROD_CMD_ID_CLEAR_SQ ;
 int ISCSI_SLOW_PATH_HDR_LAYER_CODE ;
 int PROTOCOLID_ISCSI ;
 int SET_FIELD (int ,int ,int ) ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

__attribute__((used)) static int qed_sp_iscsi_conn_clear_sq(struct qed_hwfn *p_hwfn,
          struct qed_iscsi_conn *p_conn,
          enum spq_mode comp_mode,
          struct qed_spq_comp_cb *p_comp_addr)
{
 struct iscsi_slow_path_hdr *p_ramrod = ((void*)0);
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 int rc = -EINVAL;


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = p_conn->icid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = comp_mode;
 init_data.p_comp_data = p_comp_addr;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     ISCSI_RAMROD_CMD_ID_CLEAR_SQ,
     PROTOCOLID_ISCSI, &init_data);
 if (rc)
  return rc;

 p_ramrod = &p_ent->ramrod.iscsi_empty;
 p_ramrod->op_code = ISCSI_RAMROD_CMD_ID_CLEAR_SQ;
 SET_FIELD(p_ramrod->flags,
    ISCSI_SLOW_PATH_HDR_LAYER_CODE, p_conn->layer_code);

 return qed_spq_post(p_hwfn, p_ent, ((void*)0));
}
