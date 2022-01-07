
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct kcqe {int dummy; } ;
struct fcoe_kcqe {size_t fcoe_conn_id; } ;
struct cnic_local {struct cnic_context* ctx_tbl; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
struct cnic_context {int wait_cond; int waitq; int timestamp; } ;


 size_t BNX2X_FCOE_L5_CID_BASE ;
 int jiffies ;
 int wake_up (int *) ;

__attribute__((used)) static void cnic_process_fcoe_term_conn(struct cnic_dev *dev, struct kcqe *kcqe)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct fcoe_kcqe *fc_kcqe = (struct fcoe_kcqe *) kcqe;
 u32 l5_cid = fc_kcqe->fcoe_conn_id + BNX2X_FCOE_L5_CID_BASE;
 struct cnic_context *ctx = &cp->ctx_tbl[l5_cid];

 ctx->timestamp = jiffies;
 ctx->wait_cond = 1;
 wake_up(&ctx->waitq);
}
