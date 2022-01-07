
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_16__ {int* range; int * offset; } ;
struct cxl_context {TYPE_8__* afu; TYPE_7__* elem; TYPE_5__ irqs; scalar_t__ sstp1; scalar_t__ sstp0; scalar_t__ kernel; } ;
struct TYPE_20__ {int (* afu_check_and_enable ) (TYPE_8__*) ;} ;
struct TYPE_19__ {TYPE_4__* native; } ;
struct TYPE_13__ {void* sstp1; void* sstp0; scalar_t__ aurp1; scalar_t__ aurp0; } ;
struct TYPE_14__ {TYPE_2__ psl8; } ;
struct TYPE_17__ {void* wed; void* amr; TYPE_3__ u; scalar_t__ csrp; void* pid; scalar_t__ tid; } ;
struct TYPE_12__ {void* sdr; } ;
struct TYPE_18__ {TYPE_6__ common; void* sr; TYPE_1__ u; scalar_t__ haurp; void* lpid; scalar_t__ ctxtime; } ;
struct TYPE_15__ {int psl_hwirq; } ;
struct TYPE_11__ {scalar_t__ pid; } ;


 int SPRN_LPID ;
 int SPRN_SDR1 ;
 int add_process_element (struct cxl_context*) ;
 scalar_t__ calculate_sr (struct cxl_context*) ;
 void* cpu_to_be32 (scalar_t__) ;
 void* cpu_to_be64 (scalar_t__) ;
 TYPE_10__* current ;
 int cxl_assign_psn_space (struct cxl_context*) ;
 TYPE_9__* cxl_ops ;
 int cxl_prefault (struct cxl_context*,scalar_t__) ;
 scalar_t__ mfspr (int ) ;
 int stub1 (TYPE_8__*) ;
 int update_ivtes_directed (struct cxl_context*) ;

int cxl_attach_afu_directed_psl8(struct cxl_context *ctx, u64 wed, u64 amr)
{
 u32 pid;
 int result;

 cxl_assign_psn_space(ctx);

 ctx->elem->ctxtime = 0;
 ctx->elem->lpid = cpu_to_be32(mfspr(SPRN_LPID));
 ctx->elem->haurp = 0;
 ctx->elem->u.sdr = cpu_to_be64(mfspr(SPRN_SDR1));

 pid = current->pid;
 if (ctx->kernel)
  pid = 0;
 ctx->elem->common.tid = 0;
 ctx->elem->common.pid = cpu_to_be32(pid);

 ctx->elem->sr = cpu_to_be64(calculate_sr(ctx));

 ctx->elem->common.csrp = 0;
 ctx->elem->common.u.psl8.aurp0 = 0;
 ctx->elem->common.u.psl8.aurp1 = 0;

 cxl_prefault(ctx, wed);

 ctx->elem->common.u.psl8.sstp0 = cpu_to_be64(ctx->sstp0);
 ctx->elem->common.u.psl8.sstp1 = cpu_to_be64(ctx->sstp1);





 if (ctx->irqs.range[0] == 0) {
  ctx->irqs.offset[0] = ctx->afu->native->psl_hwirq;
  ctx->irqs.range[0] = 1;
 }

 update_ivtes_directed(ctx);

 ctx->elem->common.amr = cpu_to_be64(amr);
 ctx->elem->common.wed = cpu_to_be64(wed);


 if ((result = cxl_ops->afu_check_and_enable(ctx->afu)))
  return result;

 return add_process_element(ctx);
}
