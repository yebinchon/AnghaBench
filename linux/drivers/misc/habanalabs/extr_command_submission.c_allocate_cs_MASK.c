#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dma_fence {int dummy; } ;
struct hl_dma_fence {int submitted; int completed; int cs_seq; int sequence; struct dma_fence base_fence; int /*<<< orphan*/  lock; struct dma_fence* fence; struct hl_device* hdev; int /*<<< orphan*/  job_lock; int /*<<< orphan*/  refcount; int /*<<< orphan*/  work_tdr; int /*<<< orphan*/  job_list; struct hl_ctx* ctx; } ;
struct hl_device {int /*<<< orphan*/  dev; } ;
struct hl_ctx {int cs_sequence; int /*<<< orphan*/  cs_lock; struct dma_fence** cs_pending; int /*<<< orphan*/  asid; } ;
struct hl_cs {int submitted; int completed; int cs_seq; int sequence; struct dma_fence base_fence; int /*<<< orphan*/  lock; struct dma_fence* fence; struct hl_device* hdev; int /*<<< orphan*/  job_lock; int /*<<< orphan*/  refcount; int /*<<< orphan*/  work_tdr; int /*<<< orphan*/  job_list; struct hl_ctx* ctx; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HL_MAX_PENDING_CS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cs_timedout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_fence*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_fence*) ; 
 int /*<<< orphan*/  hl_fence_ops ; 
 int /*<<< orphan*/  FUNC7 (struct hl_dma_fence*) ; 
 struct hl_dma_fence* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct hl_dma_fence* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct hl_device *hdev, struct hl_ctx *ctx,
			struct hl_cs **cs_new)
{
	struct hl_dma_fence *fence;
	struct dma_fence *other = NULL;
	struct hl_cs *cs;
	int rc;

	cs = FUNC10(sizeof(*cs), GFP_ATOMIC);
	if (!cs)
		return -ENOMEM;

	cs->ctx = ctx;
	cs->submitted = false;
	cs->completed = false;
	FUNC1(&cs->job_list);
	FUNC0(&cs->work_tdr, cs_timedout);
	FUNC9(&cs->refcount);
	FUNC12(&cs->job_lock);

	fence = FUNC8(sizeof(*fence), GFP_ATOMIC);
	if (!fence) {
		rc = -ENOMEM;
		goto free_cs;
	}

	fence->hdev = hdev;
	FUNC12(&fence->lock);
	cs->fence = &fence->base_fence;

	FUNC11(&ctx->cs_lock);

	fence->cs_seq = ctx->cs_sequence;
	other = ctx->cs_pending[fence->cs_seq & (HL_MAX_PENDING_CS - 1)];
	if ((other) && (!FUNC5(other))) {
		FUNC13(&ctx->cs_lock);
		FUNC2(hdev->dev,
			"Rejecting CS because of too many in-flights CS\n");
		rc = -EAGAIN;
		goto free_fence;
	}

	FUNC4(&fence->base_fence, &hl_fence_ops, &fence->lock,
			ctx->asid, ctx->cs_sequence);

	cs->sequence = fence->cs_seq;

	ctx->cs_pending[fence->cs_seq & (HL_MAX_PENDING_CS - 1)] =
							&fence->base_fence;
	ctx->cs_sequence++;

	FUNC3(&fence->base_fence);

	FUNC6(other);

	FUNC13(&ctx->cs_lock);

	*cs_new = cs;

	return 0;

free_fence:
	FUNC7(fence);
free_cs:
	FUNC7(cs);
	return rc;
}