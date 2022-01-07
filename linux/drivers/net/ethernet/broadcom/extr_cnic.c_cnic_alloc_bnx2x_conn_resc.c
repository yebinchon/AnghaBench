
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct cnic_local {int hq_size; int r2tq_size; int task_array_size; int cid_tbl; int fcoe_cid_tbl; struct cnic_context* ctx_tbl; } ;
struct cnic_iscsi {int hq_info; int r2tq_info; int task_array_info; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
struct TYPE_2__ {struct cnic_iscsi* iscsi; } ;
struct cnic_context {scalar_t__ ulp_proto_id; size_t cid; TYPE_1__ proto; } ;


 int CNIC_PAGE_ALIGN (int ) ;
 int CNIC_PAGE_SIZE ;
 scalar_t__ CNIC_ULP_FCOE ;
 int ENOMEM ;
 int cnic_alloc_dma (struct cnic_dev*,int *,int,int) ;
 size_t cnic_alloc_new_id (int *) ;
 int cnic_free_bnx2x_conn_resc (struct cnic_dev*,size_t) ;

__attribute__((used)) static int cnic_alloc_bnx2x_conn_resc(struct cnic_dev *dev, u32 l5_cid)
{
 u32 cid;
 int ret, pages;
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_context *ctx = &cp->ctx_tbl[l5_cid];
 struct cnic_iscsi *iscsi = ctx->proto.iscsi;

 if (ctx->ulp_proto_id == CNIC_ULP_FCOE) {
  cid = cnic_alloc_new_id(&cp->fcoe_cid_tbl);
  if (cid == -1) {
   ret = -ENOMEM;
   goto error;
  }
  ctx->cid = cid;
  return 0;
 }

 cid = cnic_alloc_new_id(&cp->cid_tbl);
 if (cid == -1) {
  ret = -ENOMEM;
  goto error;
 }

 ctx->cid = cid;
 pages = CNIC_PAGE_ALIGN(cp->task_array_size) / CNIC_PAGE_SIZE;

 ret = cnic_alloc_dma(dev, &iscsi->task_array_info, pages, 1);
 if (ret)
  goto error;

 pages = CNIC_PAGE_ALIGN(cp->r2tq_size) / CNIC_PAGE_SIZE;
 ret = cnic_alloc_dma(dev, &iscsi->r2tq_info, pages, 1);
 if (ret)
  goto error;

 pages = CNIC_PAGE_ALIGN(cp->hq_size) / CNIC_PAGE_SIZE;
 ret = cnic_alloc_dma(dev, &iscsi->hq_info, pages, 1);
 if (ret)
  goto error;

 return 0;

error:
 cnic_free_bnx2x_conn_resc(dev, l5_cid);
 return ret;
}
