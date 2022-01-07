
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iwarp_modify_qp_ramrod_data {int transition_to_state; int flags; } ;
struct TYPE_6__ {struct iwarp_modify_qp_ramrod_data iwarp_modify_qp; } ;
struct qed_spq_entry {TYPE_3__ ramrod; } ;
struct qed_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct qed_rdma_qp {scalar_t__ iwarp_state; int icid; } ;
struct TYPE_4__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_2__* p_rdma_info; TYPE_1__ hw_info; } ;
typedef int init_data ;
struct TYPE_5__ {int proto; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int) ;
 int IWARP_MODIFY_QP_RAMROD_DATA_STATE_TRANS_EN ;
 int IWARP_MODIFY_QP_STATE_CLOSING ;
 int IWARP_MODIFY_QP_STATE_ERROR ;
 int IWARP_RAMROD_CMD_ID_MODIFY_QP ;
 scalar_t__ QED_IWARP_QP_STATE_CLOSING ;
 int QED_MSG_RDMA ;
 int QED_SPQ_MODE_EBLOCK ;
 int SET_FIELD (int ,int ,int) ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

__attribute__((used)) static int qed_iwarp_modify_fw(struct qed_hwfn *p_hwfn, struct qed_rdma_qp *qp)
{
 struct iwarp_modify_qp_ramrod_data *p_ramrod;
 struct qed_sp_init_data init_data;
 struct qed_spq_entry *p_ent;
 int rc;


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = qp->icid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     IWARP_RAMROD_CMD_ID_MODIFY_QP,
     p_hwfn->p_rdma_info->proto, &init_data);
 if (rc)
  return rc;

 p_ramrod = &p_ent->ramrod.iwarp_modify_qp;
 SET_FIELD(p_ramrod->flags, IWARP_MODIFY_QP_RAMROD_DATA_STATE_TRANS_EN,
    0x1);
 if (qp->iwarp_state == QED_IWARP_QP_STATE_CLOSING)
  p_ramrod->transition_to_state = IWARP_MODIFY_QP_STATE_CLOSING;
 else
  p_ramrod->transition_to_state = IWARP_MODIFY_QP_STATE_ERROR;

 rc = qed_spq_post(p_hwfn, p_ent, ((void*)0));

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "QP(0x%x)rc=%d\n", qp->icid, rc);

 return rc;
}
