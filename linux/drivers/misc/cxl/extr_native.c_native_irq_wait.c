
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cxl_context {int pe; TYPE_1__* afu; } ;
struct TYPE_2__ {int dev; } ;


 int CXL_PSL9_DSISR_PENDING ;
 int CXL_PSL_DSISR_An ;
 int CXL_PSL_DSISR_PENDING ;
 int CXL_PSL_PEHandle_An ;
 scalar_t__ cxl_is_power8 () ;
 scalar_t__ cxl_is_power9 () ;
 int cxl_p2n_read (TYPE_1__*,int ) ;
 int dev_warn (int *,char*,int,int) ;
 int msleep (int) ;

__attribute__((used)) static void native_irq_wait(struct cxl_context *ctx)
{
 u64 dsisr;
 int timeout = 1000;
 int ph;





 while (timeout--) {
  ph = cxl_p2n_read(ctx->afu, CXL_PSL_PEHandle_An) & 0xffff;
  if (ph != ctx->pe)
   return;
  dsisr = cxl_p2n_read(ctx->afu, CXL_PSL_DSISR_An);
  if (cxl_is_power8() &&
     ((dsisr & CXL_PSL_DSISR_PENDING) == 0))
   return;
  if (cxl_is_power9() &&
     ((dsisr & CXL_PSL9_DSISR_PENDING) == 0))
   return;




  msleep(1);
 }

 dev_warn(&ctx->afu->dev, "WARNING: waiting on DSI for PE %i"
   " DSISR %016llx!\n", ph, dsisr);
 return;
}
