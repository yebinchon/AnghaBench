
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;
struct hl_dma_fence {int submitted; int completed; int cs_seq; int sequence; struct dma_fence base_fence; int lock; struct dma_fence* fence; struct hl_device* hdev; int job_lock; int refcount; int work_tdr; int job_list; struct hl_ctx* ctx; } ;
struct hl_device {int dev; } ;
struct hl_ctx {int cs_sequence; int cs_lock; struct dma_fence** cs_pending; int asid; } ;
struct hl_cs {int submitted; int completed; int cs_seq; int sequence; struct dma_fence base_fence; int lock; struct dma_fence* fence; struct hl_device* hdev; int job_lock; int refcount; int work_tdr; int job_list; struct hl_ctx* ctx; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int HL_MAX_PENDING_CS ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int cs_timedout ;
 int dev_dbg (int ,char*) ;
 int dma_fence_get (struct dma_fence*) ;
 int dma_fence_init (struct dma_fence*,int *,int *,int ,int) ;
 int dma_fence_is_signaled (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 int hl_fence_ops ;
 int kfree (struct hl_dma_fence*) ;
 struct hl_dma_fence* kmalloc (int,int ) ;
 int kref_init (int *) ;
 struct hl_dma_fence* kzalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int allocate_cs(struct hl_device *hdev, struct hl_ctx *ctx,
   struct hl_cs **cs_new)
{
 struct hl_dma_fence *fence;
 struct dma_fence *other = ((void*)0);
 struct hl_cs *cs;
 int rc;

 cs = kzalloc(sizeof(*cs), GFP_ATOMIC);
 if (!cs)
  return -ENOMEM;

 cs->ctx = ctx;
 cs->submitted = 0;
 cs->completed = 0;
 INIT_LIST_HEAD(&cs->job_list);
 INIT_DELAYED_WORK(&cs->work_tdr, cs_timedout);
 kref_init(&cs->refcount);
 spin_lock_init(&cs->job_lock);

 fence = kmalloc(sizeof(*fence), GFP_ATOMIC);
 if (!fence) {
  rc = -ENOMEM;
  goto free_cs;
 }

 fence->hdev = hdev;
 spin_lock_init(&fence->lock);
 cs->fence = &fence->base_fence;

 spin_lock(&ctx->cs_lock);

 fence->cs_seq = ctx->cs_sequence;
 other = ctx->cs_pending[fence->cs_seq & (HL_MAX_PENDING_CS - 1)];
 if ((other) && (!dma_fence_is_signaled(other))) {
  spin_unlock(&ctx->cs_lock);
  dev_dbg(hdev->dev,
   "Rejecting CS because of too many in-flights CS\n");
  rc = -EAGAIN;
  goto free_fence;
 }

 dma_fence_init(&fence->base_fence, &hl_fence_ops, &fence->lock,
   ctx->asid, ctx->cs_sequence);

 cs->sequence = fence->cs_seq;

 ctx->cs_pending[fence->cs_seq & (HL_MAX_PENDING_CS - 1)] =
       &fence->base_fence;
 ctx->cs_sequence++;

 dma_fence_get(&fence->base_fence);

 dma_fence_put(other);

 spin_unlock(&ctx->cs_lock);

 *cs_new = cs;

 return 0;

free_fence:
 kfree(fence);
free_cs:
 kfree(cs);
 return rc;
}
