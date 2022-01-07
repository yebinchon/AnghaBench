
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
 int cxl_ack_ae (struct cxl_context*) ;
 scalar_t__ cxl_handle_mm_fault (struct mm_struct*,int ,int ) ;
 TYPE_1__* cxl_ops ;
 int pr_devel (char*,int ) ;
 int stub1 (struct cxl_context*,int ,int ) ;
 int trace_cxl_pte_miss (struct cxl_context*,int ,int ) ;

__attribute__((used)) static void cxl_handle_page_fault(struct cxl_context *ctx,
      struct mm_struct *mm,
      u64 dsisr, u64 dar)
{
 trace_cxl_pte_miss(ctx, dsisr, dar);

 if (cxl_handle_mm_fault(mm, dsisr, dar)) {
  cxl_ack_ae(ctx);
 } else {
  pr_devel("Page fault successfully handled for pe: %i!\n", ctx->pe);
  cxl_ops->ack_irq(ctx, CXL_PSL_TFC_An_R, 0);
 }
}
