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
struct hl_device {int /*<<< orphan*/  dev; } ;
struct hl_ctx {int cs_sequence; scalar_t__ asid; scalar_t__ thread_ctx_switch_wait_token; int /*<<< orphan*/  thread_ctx_switch_token; int /*<<< orphan*/  cs_lock; int /*<<< orphan*/  refcount; struct hl_device* hdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ HL_KERNEL_ASID_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hl_device*,scalar_t__) ; 
 int FUNC4 (struct hl_ctx*) ; 
 int FUNC5 (struct hl_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct hl_device *hdev, struct hl_ctx *ctx, bool is_kernel_ctx)
{
	int rc = 0;

	ctx->hdev = hdev;

	FUNC6(&ctx->refcount);

	ctx->cs_sequence = 1;
	FUNC7(&ctx->cs_lock);
	FUNC0(&ctx->thread_ctx_switch_token, 1);
	ctx->thread_ctx_switch_wait_token = 0;

	if (is_kernel_ctx) {
		ctx->asid = HL_KERNEL_ASID_ID; /* Kernel driver gets ASID 0 */
		rc = FUNC4(ctx);
		if (rc) {
			FUNC1(hdev->dev, "Failed to init mmu ctx module\n");
			goto mem_ctx_err;
		}
	} else {
		ctx->asid = FUNC2(hdev);
		if (!ctx->asid) {
			FUNC1(hdev->dev, "No free ASID, failed to create context\n");
			return -ENOMEM;
		}

		rc = FUNC5(ctx);
		if (rc) {
			FUNC1(hdev->dev, "Failed to init mem ctx module\n");
			rc = -ENOMEM;
			goto mem_ctx_err;
		}
	}

	return 0;

mem_ctx_err:
	if (ctx->asid != HL_KERNEL_ASID_ID)
		FUNC3(hdev, ctx->asid);

	return rc;
}