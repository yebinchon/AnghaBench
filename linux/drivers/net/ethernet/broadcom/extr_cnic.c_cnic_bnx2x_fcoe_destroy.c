
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union l5cm_specific_data {size_t fcoe_conn_id; size_t fcoe_conn_context_id; int op_code; scalar_t__ completion_status; } ;
typedef size_t u32 ;
struct kwqe {int dummy; } ;
struct kcqe {int dummy; } ;
struct fcoe_kwqe_conn_destroy {size_t context_id; size_t conn_id; } ;
struct fcoe_kcqe {size_t fcoe_conn_id; size_t fcoe_conn_context_id; int op_code; scalar_t__ completion_status; } ;
struct cnic_local {int delete_task; struct cnic_context* ctx_tbl; } ;
struct cnic_dev {size_t max_fcoe_conn; struct cnic_local* cnic_priv; } ;
struct cnic_context {int ctx_flags; scalar_t__ wait_cond; int waitq; } ;
typedef int l5_data ;
typedef int kcqe ;


 scalar_t__ BNX2X_FCOE_L5_CID_BASE ;
 int CNIC_RAMROD_TMO ;
 int CNIC_ULP_FCOE ;
 int CTX_FL_DELETE_WAIT ;
 int EINVAL ;
 int FCOE_CONNECTION_TYPE ;
 scalar_t__ FCOE_KCQE_COMPLETION_STATUS_ERROR ;
 int FCOE_KCQE_OPCODE_DESTROY_CONN ;
 int FCOE_RAMROD_CMD_ID_TERMINATE_CONN ;
 int cnic_reply_bnx2x_kcqes (struct cnic_dev*,int ,struct kcqe**,int) ;
 int cnic_submit_kwqe_16 (struct cnic_dev*,int ,size_t,int ,union l5cm_specific_data*) ;
 int cnic_wq ;
 int init_waitqueue_head (int *) ;
 int memset (union l5cm_specific_data*,int ,int) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int set_bit (int ,int *) ;
 int wait_event_timeout (int ,scalar_t__,int ) ;

__attribute__((used)) static int cnic_bnx2x_fcoe_destroy(struct cnic_dev *dev, struct kwqe *kwqe)
{
 struct fcoe_kwqe_conn_destroy *req;
 union l5cm_specific_data l5_data;
 int ret;
 u32 cid, l5_cid;
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_context *ctx;
 struct fcoe_kcqe kcqe;
 struct kcqe *cqes[1];

 req = (struct fcoe_kwqe_conn_destroy *) kwqe;
 cid = req->context_id;
 l5_cid = req->conn_id;
 if (l5_cid >= dev->max_fcoe_conn)
  return -EINVAL;

 l5_cid += BNX2X_FCOE_L5_CID_BASE;

 ctx = &cp->ctx_tbl[l5_cid];

 init_waitqueue_head(&ctx->waitq);
 ctx->wait_cond = 0;

 memset(&kcqe, 0, sizeof(kcqe));
 kcqe.completion_status = FCOE_KCQE_COMPLETION_STATUS_ERROR;
 memset(&l5_data, 0, sizeof(l5_data));
 ret = cnic_submit_kwqe_16(dev, FCOE_RAMROD_CMD_ID_TERMINATE_CONN, cid,
      FCOE_CONNECTION_TYPE, &l5_data);
 if (ret == 0) {
  wait_event_timeout(ctx->waitq, ctx->wait_cond, CNIC_RAMROD_TMO);
  if (ctx->wait_cond)
   kcqe.completion_status = 0;
 }

 set_bit(CTX_FL_DELETE_WAIT, &ctx->ctx_flags);
 queue_delayed_work(cnic_wq, &cp->delete_task, msecs_to_jiffies(2000));

 kcqe.op_code = FCOE_KCQE_OPCODE_DESTROY_CONN;
 kcqe.fcoe_conn_id = req->conn_id;
 kcqe.fcoe_conn_context_id = cid;

 cqes[0] = (struct kcqe *) &kcqe;
 cnic_reply_bnx2x_kcqes(dev, CNIC_ULP_FCOE, cqes, 1);
 return ret;
}
