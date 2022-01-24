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
struct hl_device {int /*<<< orphan*/  mmu_enable; } ;
struct hl_ctx {int /*<<< orphan*/  mmu_shadow_hash; int /*<<< orphan*/  mmu_phys_hash; int /*<<< orphan*/  mmu_lock; struct hl_device* hdev; } ;

/* Variables and functions */
 int FUNC0 (struct hl_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct hl_ctx *ctx)
{
	struct hl_device *hdev = ctx->hdev;

	if (!hdev->mmu_enable)
		return 0;

	FUNC2(&ctx->mmu_lock);
	FUNC1(ctx->mmu_phys_hash);
	FUNC1(ctx->mmu_shadow_hash);

	return FUNC0(ctx);
}