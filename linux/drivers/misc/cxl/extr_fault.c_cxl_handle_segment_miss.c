
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mm_struct {int dummy; } ;
struct cxl_context {int pe; } ;
struct TYPE_2__ {int (* ack_irq ) (struct cxl_context*,int ,int ) ;} ;


 int CXL_PSL_TFC_An_R ;
 int IRQ_HANDLED ;
 int cxl_ack_ae (struct cxl_context*) ;
 int cxl_fault_segment (struct cxl_context*,struct mm_struct*,int ) ;
 TYPE_1__* cxl_ops ;
 int mb () ;
 int pr_devel (char*,int ,int ) ;
 int stub1 (struct cxl_context*,int ,int ) ;
 int trace_cxl_ste_miss (struct cxl_context*,int ) ;

__attribute__((used)) static int cxl_handle_segment_miss(struct cxl_context *ctx,
       struct mm_struct *mm, u64 ea)
{
 int rc;

 pr_devel("CXL interrupt: Segment fault pe: %i ea: %#llx\n", ctx->pe, ea);
 trace_cxl_ste_miss(ctx, ea);

 if ((rc = cxl_fault_segment(ctx, mm, ea)))
  cxl_ack_ae(ctx);
 else {

  mb();
  cxl_ops->ack_irq(ctx, CXL_PSL_TFC_An_R, 0);
 }

 return IRQ_HANDLED;
}
