
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct cxl_context {TYPE_3__* afu; } ;
struct TYPE_9__ {TYPE_2__* native; } ;
struct TYPE_8__ {int dev; TYPE_4__* adapter; } ;
struct TYPE_7__ {TYPE_1__* sl_ops; } ;
struct TYPE_6__ {scalar_t__ register_serr_irq; } ;


 int CXL_AFU_DEBUG_An ;
 int CXL_PSL_FIR1 ;
 int CXL_PSL_FIR2 ;
 int CXL_PSL_FIR_SLICE_An ;
 int CXL_PSL_SERR_An ;
 int cxl_afu_decode_psl_serr (TYPE_3__*,int ) ;
 int cxl_p1_read (TYPE_4__*,int ) ;
 int cxl_p1n_read (TYPE_3__*,int ) ;
 int dev_crit (int *,char*,int ) ;

void cxl_native_irq_dump_regs_psl8(struct cxl_context *ctx)
{
 u64 fir1, fir2, fir_slice, serr, afu_debug;

 fir1 = cxl_p1_read(ctx->afu->adapter, CXL_PSL_FIR1);
 fir2 = cxl_p1_read(ctx->afu->adapter, CXL_PSL_FIR2);
 fir_slice = cxl_p1n_read(ctx->afu, CXL_PSL_FIR_SLICE_An);
 afu_debug = cxl_p1n_read(ctx->afu, CXL_AFU_DEBUG_An);

 dev_crit(&ctx->afu->dev, "PSL_FIR1: 0x%016llx\n", fir1);
 dev_crit(&ctx->afu->dev, "PSL_FIR2: 0x%016llx\n", fir2);
 if (ctx->afu->adapter->native->sl_ops->register_serr_irq) {
  serr = cxl_p1n_read(ctx->afu, CXL_PSL_SERR_An);
  cxl_afu_decode_psl_serr(ctx->afu, serr);
 }
 dev_crit(&ctx->afu->dev, "PSL_FIR_SLICE_An: 0x%016llx\n", fir_slice);
 dev_crit(&ctx->afu->dev, "CXL_PSL_AFU_DEBUG_An: 0x%016llx\n", afu_debug);
}
