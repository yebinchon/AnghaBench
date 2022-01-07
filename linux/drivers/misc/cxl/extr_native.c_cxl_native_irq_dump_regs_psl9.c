
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
struct TYPE_8__ {TYPE_4__* adapter; int dev; } ;
struct TYPE_7__ {TYPE_1__* sl_ops; } ;
struct TYPE_6__ {scalar_t__ register_serr_irq; } ;


 int CXL_PSL9_FIR1 ;
 int CXL_PSL_SERR_An ;
 int cxl_afu_decode_psl_serr (TYPE_3__*,int ) ;
 int cxl_p1_read (TYPE_4__*,int ) ;
 int cxl_p1n_read (TYPE_3__*,int ) ;
 int dev_crit (int *,char*,int ) ;

void cxl_native_irq_dump_regs_psl9(struct cxl_context *ctx)
{
 u64 fir1, serr;

 fir1 = cxl_p1_read(ctx->afu->adapter, CXL_PSL9_FIR1);

 dev_crit(&ctx->afu->dev, "PSL_FIR1: 0x%016llx\n", fir1);
 if (ctx->afu->adapter->native->sl_ops->register_serr_irq) {
  serr = cxl_p1n_read(ctx->afu, CXL_PSL_SERR_An);
  cxl_afu_decode_psl_serr(ctx->afu, serr);
 }
}
