
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct cnic_local {int fcoe_cid_tbl; int cid_tbl; struct cnic_context* ctx_tbl; } ;
struct cnic_iscsi {int task_array_info; int r2tq_info; int hq_info; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
struct TYPE_2__ {struct cnic_iscsi* iscsi; } ;
struct cnic_context {scalar_t__ ulp_proto_id; scalar_t__ cid; TYPE_1__ proto; } ;


 scalar_t__ CNIC_ULP_ISCSI ;
 int cnic_free_dma (struct cnic_dev*,int *) ;
 int cnic_free_id (int *,scalar_t__) ;

__attribute__((used)) static void cnic_free_bnx2x_conn_resc(struct cnic_dev *dev, u32 l5_cid)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_context *ctx = &cp->ctx_tbl[l5_cid];

 if (ctx->ulp_proto_id == CNIC_ULP_ISCSI) {
  struct cnic_iscsi *iscsi = ctx->proto.iscsi;

  cnic_free_dma(dev, &iscsi->hq_info);
  cnic_free_dma(dev, &iscsi->r2tq_info);
  cnic_free_dma(dev, &iscsi->task_array_info);
  cnic_free_id(&cp->cid_tbl, ctx->cid);
 } else {
  cnic_free_id(&cp->fcoe_cid_tbl, ctx->cid);
 }

 ctx->cid = 0;
}
