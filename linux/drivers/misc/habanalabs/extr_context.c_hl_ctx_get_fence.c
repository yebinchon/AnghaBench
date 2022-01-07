
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hl_device {int dev; } ;
struct hl_ctx {int cs_sequence; int cs_lock; int * cs_pending; struct hl_device* hdev; } ;
struct dma_fence {int dummy; } ;


 int EINVAL ;
 struct dma_fence* ERR_PTR (int ) ;
 int HL_MAX_PENDING_CS ;
 int dev_dbg (int ,char*,int,int) ;
 int dev_notice (int ,char*,int,int) ;
 struct dma_fence* dma_fence_get (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct dma_fence *hl_ctx_get_fence(struct hl_ctx *ctx, u64 seq)
{
 struct hl_device *hdev = ctx->hdev;
 struct dma_fence *fence;

 spin_lock(&ctx->cs_lock);

 if (seq >= ctx->cs_sequence) {
  dev_notice(hdev->dev,
   "Can't wait on seq %llu because current CS is at seq %llu\n",
   seq, ctx->cs_sequence);
  spin_unlock(&ctx->cs_lock);
  return ERR_PTR(-EINVAL);
 }


 if (seq + HL_MAX_PENDING_CS < ctx->cs_sequence) {
  dev_dbg(hdev->dev,
   "Can't wait on seq %llu because current CS is at seq %llu (Fence is gone)\n",
   seq, ctx->cs_sequence);
  spin_unlock(&ctx->cs_lock);
  return ((void*)0);
 }

 fence = dma_fence_get(
   ctx->cs_pending[seq & (HL_MAX_PENDING_CS - 1)]);
 spin_unlock(&ctx->cs_lock);

 return fence;
}
