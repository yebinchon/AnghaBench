
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct cxl_context {struct cxl_afu* afu; int sstp1; int sstp0; scalar_t__ kernel; } ;
struct cxl_afu {TYPE_3__* adapter; } ;
struct TYPE_10__ {scalar_t__ pid; } ;
struct TYPE_9__ {int (* afu_reset ) (struct cxl_afu*) ;} ;
struct TYPE_8__ {TYPE_2__* native; } ;
struct TYPE_7__ {TYPE_1__* sl_ops; } ;
struct TYPE_6__ {int (* update_dedicated_ivtes ) (struct cxl_context*) ;} ;


 int CXL_PSL_AMR_An ;
 int CXL_PSL_PID_TID_An ;
 int CXL_PSL_SR_An ;
 int CXL_PSL_WED_An ;
 int afu_enable (struct cxl_afu*) ;
 int calculate_sr (struct cxl_context*) ;
 TYPE_5__* current ;
 int cxl_assign_psn_space (struct cxl_context*) ;
 TYPE_4__* cxl_ops ;
 int cxl_p1n_write (struct cxl_afu*,int ,int ) ;
 int cxl_p2n_write (struct cxl_afu*,int ,int) ;
 int cxl_prefault (struct cxl_context*,int) ;
 int cxl_write_sstp (struct cxl_afu*,int ,int ) ;
 int stub1 (struct cxl_context*) ;
 int stub2 (struct cxl_afu*) ;

int cxl_attach_dedicated_process_psl8(struct cxl_context *ctx, u64 wed, u64 amr)
{
 struct cxl_afu *afu = ctx->afu;
 u64 pid;
 int rc;

 pid = (u64)current->pid << 32;
 if (ctx->kernel)
  pid = 0;
 cxl_p2n_write(afu, CXL_PSL_PID_TID_An, pid);

 cxl_p1n_write(afu, CXL_PSL_SR_An, calculate_sr(ctx));

 if ((rc = cxl_write_sstp(afu, ctx->sstp0, ctx->sstp1)))
  return rc;

 cxl_prefault(ctx, wed);

 if (ctx->afu->adapter->native->sl_ops->update_dedicated_ivtes)
  afu->adapter->native->sl_ops->update_dedicated_ivtes(ctx);

 cxl_p2n_write(afu, CXL_PSL_AMR_An, amr);


 cxl_assign_psn_space(ctx);

 if ((rc = cxl_ops->afu_reset(afu)))
  return rc;

 cxl_p2n_write(afu, CXL_PSL_WED_An, wed);

 return afu_enable(afu);
}
