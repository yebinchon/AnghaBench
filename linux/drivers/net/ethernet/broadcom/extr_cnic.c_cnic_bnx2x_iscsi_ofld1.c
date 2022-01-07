
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kwqe {int dummy; } ;
struct kcqe {int dummy; } ;
struct iscsi_kwqe_conn_offload2 {int num_additional_wqes; } ;
struct iscsi_kwqe_conn_offload1 {int iscsi_conn_id; } ;
struct iscsi_kcqe {int iscsi_conn_id; int iscsi_conn_context_id; int completion_status; int op_code; } ;
struct cnic_local {struct cnic_context* ctx_tbl; int iscsi_conn; } ;
struct cnic_dev {scalar_t__ max_iscsi_conn; int netdev; struct cnic_local* cnic_priv; } ;
struct cnic_context {int cid; int ctx_flags; } ;
struct bnx2x {int dummy; } ;
typedef int kcqe ;


 int BNX2X_HW_CID (struct bnx2x*,int ) ;
 int CNIC_ULP_ISCSI ;
 int CTX_FL_OFFLD_START ;
 int EINVAL ;
 int ISCSI_KCQE_COMPLETION_STATUS_CID_BUSY ;
 int ISCSI_KCQE_COMPLETION_STATUS_CTX_ALLOC_FAILURE ;
 int ISCSI_KCQE_COMPLETION_STATUS_SUCCESS ;
 int ISCSI_KCQE_OPCODE_OFFLOAD_CONN ;
 int MAX_ISCSI_TBL_SZ ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 int cnic_alloc_bnx2x_conn_resc (struct cnic_dev*,int) ;
 int cnic_free_bnx2x_conn_resc (struct cnic_dev*,int) ;
 int cnic_reply_bnx2x_kcqes (struct cnic_dev*,int ,struct kcqe**,int) ;
 int cnic_setup_bnx2x_ctx (struct cnic_dev*,struct kwqe**,int) ;
 int memset (struct iscsi_kcqe*,int ,int) ;
 struct bnx2x* netdev_priv (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int cnic_bnx2x_iscsi_ofld1(struct cnic_dev *dev, struct kwqe *wqes[],
       u32 num, int *work)
{
 struct iscsi_kwqe_conn_offload1 *req1;
 struct iscsi_kwqe_conn_offload2 *req2;
 struct cnic_local *cp = dev->cnic_priv;
 struct bnx2x *bp = netdev_priv(dev->netdev);
 struct cnic_context *ctx;
 struct iscsi_kcqe kcqe;
 struct kcqe *cqes[1];
 u32 l5_cid;
 int ret = 0;

 if (num < 2) {
  *work = num;
  return -EINVAL;
 }

 req1 = (struct iscsi_kwqe_conn_offload1 *) wqes[0];
 req2 = (struct iscsi_kwqe_conn_offload2 *) wqes[1];
 if ((num - 2) < req2->num_additional_wqes) {
  *work = num;
  return -EINVAL;
 }
 *work = 2 + req2->num_additional_wqes;

 l5_cid = req1->iscsi_conn_id;
 if (l5_cid >= MAX_ISCSI_TBL_SZ)
  return -EINVAL;

 memset(&kcqe, 0, sizeof(kcqe));
 kcqe.op_code = ISCSI_KCQE_OPCODE_OFFLOAD_CONN;
 kcqe.iscsi_conn_id = l5_cid;
 kcqe.completion_status = ISCSI_KCQE_COMPLETION_STATUS_CTX_ALLOC_FAILURE;

 ctx = &cp->ctx_tbl[l5_cid];
 if (test_bit(CTX_FL_OFFLD_START, &ctx->ctx_flags)) {
  kcqe.completion_status =
   ISCSI_KCQE_COMPLETION_STATUS_CID_BUSY;
  goto done;
 }

 if (atomic_inc_return(&cp->iscsi_conn) > dev->max_iscsi_conn) {
  atomic_dec(&cp->iscsi_conn);
  goto done;
 }
 ret = cnic_alloc_bnx2x_conn_resc(dev, l5_cid);
 if (ret) {
  atomic_dec(&cp->iscsi_conn);
  ret = 0;
  goto done;
 }
 ret = cnic_setup_bnx2x_ctx(dev, wqes, num);
 if (ret < 0) {
  cnic_free_bnx2x_conn_resc(dev, l5_cid);
  atomic_dec(&cp->iscsi_conn);
  goto done;
 }

 kcqe.completion_status = ISCSI_KCQE_COMPLETION_STATUS_SUCCESS;
 kcqe.iscsi_conn_context_id = BNX2X_HW_CID(bp, cp->ctx_tbl[l5_cid].cid);

done:
 cqes[0] = (struct kcqe *) &kcqe;
 cnic_reply_bnx2x_kcqes(dev, CNIC_ULP_ISCSI, cqes, 1);
 return 0;
}
