#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct hl_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct hl_ctx {int /*<<< orphan*/  mem_hash_lock; TYPE_1__ host_va_range; TYPE_1__ dram_va_range; int /*<<< orphan*/  mem_hash; int /*<<< orphan*/  asid; struct hl_device* hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hl_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hl_device*,struct hl_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct hl_ctx*) ; 
 int FUNC5 (struct hl_ctx*) ; 
 int FUNC6 (struct hl_device*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct hl_ctx *ctx, u64 host_range_start,
				u64 host_range_end, u64 dram_range_start,
				u64 dram_range_end)
{
	struct hl_device *hdev = ctx->hdev;
	int rc;

	rc = FUNC5(ctx);
	if (rc) {
		FUNC1(hdev->dev, "failed to init context %d\n", ctx->asid);
		return rc;
	}

	FUNC8(&ctx->mem_hash_lock);
	FUNC2(ctx->mem_hash);

	FUNC8(&ctx->host_va_range.lock);

	rc = FUNC6(hdev, &ctx->host_va_range, host_range_start,
			host_range_end);
	if (rc) {
		FUNC1(hdev->dev, "failed to init host vm range\n");
		goto host_vm_err;
	}

	FUNC8(&ctx->dram_va_range.lock);

	rc = FUNC6(hdev, &ctx->dram_va_range, dram_range_start,
			dram_range_end);
	if (rc) {
		FUNC1(hdev->dev, "failed to init dram vm range\n");
		goto dram_vm_err;
	}

	FUNC3(hdev, ctx);

	return 0;

dram_vm_err:
	FUNC7(&ctx->dram_va_range.lock);

	FUNC9(&ctx->host_va_range.lock);
	FUNC0(hdev, &ctx->host_va_range.list);
	FUNC10(&ctx->host_va_range.lock);
host_vm_err:
	FUNC7(&ctx->host_va_range.lock);
	FUNC7(&ctx->mem_hash_lock);
	FUNC4(ctx);

	return rc;
}