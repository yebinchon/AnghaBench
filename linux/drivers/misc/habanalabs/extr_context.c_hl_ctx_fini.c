
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {struct hl_ctx* compute_ctx; scalar_t__ in_debug; } ;
struct hl_ctx {scalar_t__ asid; int * cs_pending; struct hl_device* hdev; } ;


 scalar_t__ HL_KERNEL_ASID_ID ;
 int HL_MAX_PENDING_CS ;
 int dma_fence_put (int ) ;
 int hl_asid_free (struct hl_device*,scalar_t__) ;
 int hl_device_set_debug_mode (struct hl_device*,int) ;
 int hl_mmu_ctx_fini (struct hl_ctx*) ;
 int hl_vm_ctx_fini (struct hl_ctx*) ;

__attribute__((used)) static void hl_ctx_fini(struct hl_ctx *ctx)
{
 struct hl_device *hdev = ctx->hdev;
 int i;
 for (i = 0 ; i < HL_MAX_PENDING_CS ; i++)
  dma_fence_put(ctx->cs_pending[i]);

 if (ctx->asid != HL_KERNEL_ASID_ID) {






  if ((hdev->in_debug) && (hdev->compute_ctx == ctx))
   hl_device_set_debug_mode(hdev, 0);

  hl_vm_ctx_fini(ctx);
  hl_asid_free(hdev, ctx->asid);
 } else {
  hl_mmu_ctx_fini(ctx);
 }
}
