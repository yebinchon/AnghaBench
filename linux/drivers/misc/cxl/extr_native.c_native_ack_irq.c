
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct cxl_context {int afu; } ;


 int CXL_PSL_TFC_An ;
 int cxl_p2n_write (int ,int ,scalar_t__) ;
 int recover_psl_err (int ,scalar_t__) ;
 int trace_cxl_psl_irq_ack (struct cxl_context*,scalar_t__) ;

__attribute__((used)) static int native_ack_irq(struct cxl_context *ctx, u64 tfc, u64 psl_reset_mask)
{
 trace_cxl_psl_irq_ack(ctx, tfc);
 if (tfc)
  cxl_p2n_write(ctx->afu, CXL_PSL_TFC_An, tfc);
 if (psl_reset_mask)
  recover_psl_err(ctx->afu, psl_reset_mask);

 return 0;
}
