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
typedef  int u64 ;
struct hl_device {int /*<<< orphan*/  dev; } ;
struct hl_ctx {int cs_sequence; int /*<<< orphan*/  cs_lock; int /*<<< orphan*/ * cs_pending; struct hl_device* hdev; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct dma_fence* FUNC0 (int /*<<< orphan*/ ) ; 
 int HL_MAX_PENDING_CS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 struct dma_fence* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct dma_fence *FUNC6(struct hl_ctx *ctx, u64 seq)
{
	struct hl_device *hdev = ctx->hdev;
	struct dma_fence *fence;

	FUNC4(&ctx->cs_lock);

	if (seq >= ctx->cs_sequence) {
		FUNC2(hdev->dev,
			"Can't wait on seq %llu because current CS is at seq %llu\n",
			seq, ctx->cs_sequence);
		FUNC5(&ctx->cs_lock);
		return FUNC0(-EINVAL);
	}


	if (seq + HL_MAX_PENDING_CS < ctx->cs_sequence) {
		FUNC1(hdev->dev,
			"Can't wait on seq %llu because current CS is at seq %llu (Fence is gone)\n",
			seq, ctx->cs_sequence);
		FUNC5(&ctx->cs_lock);
		return NULL;
	}

	fence = FUNC3(
			ctx->cs_pending[seq & (HL_MAX_PENDING_CS - 1)]);
	FUNC5(&ctx->cs_lock);

	return fence;
}