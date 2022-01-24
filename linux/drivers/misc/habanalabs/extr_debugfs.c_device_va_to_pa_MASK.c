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
typedef  scalar_t__ u64 ;
struct hl_device {int /*<<< orphan*/  dev; TYPE_1__* asic_funcs; struct hl_ctx* compute_ctx; } ;
struct hl_ctx {int /*<<< orphan*/  mmu_lock; } ;
struct TYPE_2__ {scalar_t__ (* read_pte ) (struct hl_device*,scalar_t__) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HOP4_MASK ; 
 scalar_t__ LAST_MASK ; 
 scalar_t__ OFFSET_MASK ; 
 scalar_t__ PAGE_PRESENT_MASK ; 
 scalar_t__ ULLONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (struct hl_ctx*) ; 
 scalar_t__ FUNC2 (struct hl_ctx*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (struct hl_ctx*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (struct hl_ctx*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (struct hl_ctx*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (struct hl_ctx*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct hl_device*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct hl_device*,scalar_t__) ; 
 scalar_t__ FUNC12 (struct hl_device*,scalar_t__) ; 
 scalar_t__ FUNC13 (struct hl_device*,scalar_t__) ; 
 scalar_t__ FUNC14 (struct hl_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct hl_device *hdev, u64 virt_addr,
				u64 *phys_addr)
{
	struct hl_ctx *ctx = hdev->compute_ctx;
	u64 hop_addr, hop_pte_addr, hop_pte;
	u64 offset_mask = HOP4_MASK | OFFSET_MASK;
	int rc = 0;

	if (!ctx) {
		FUNC0(hdev->dev, "no ctx available\n");
		return -EINVAL;
	}

	FUNC8(&ctx->mmu_lock);

	/* hop 0 */
	hop_addr = FUNC1(ctx);
	hop_pte_addr = FUNC2(ctx, hop_addr, virt_addr);
	hop_pte = hdev->asic_funcs->read_pte(hdev, hop_pte_addr);

	/* hop 1 */
	hop_addr = FUNC7(hop_pte);
	if (hop_addr == ULLONG_MAX)
		goto not_mapped;
	hop_pte_addr = FUNC3(ctx, hop_addr, virt_addr);
	hop_pte = hdev->asic_funcs->read_pte(hdev, hop_pte_addr);

	/* hop 2 */
	hop_addr = FUNC7(hop_pte);
	if (hop_addr == ULLONG_MAX)
		goto not_mapped;
	hop_pte_addr = FUNC4(ctx, hop_addr, virt_addr);
	hop_pte = hdev->asic_funcs->read_pte(hdev, hop_pte_addr);

	/* hop 3 */
	hop_addr = FUNC7(hop_pte);
	if (hop_addr == ULLONG_MAX)
		goto not_mapped;
	hop_pte_addr = FUNC5(ctx, hop_addr, virt_addr);
	hop_pte = hdev->asic_funcs->read_pte(hdev, hop_pte_addr);

	if (!(hop_pte & LAST_MASK)) {
		/* hop 4 */
		hop_addr = FUNC7(hop_pte);
		if (hop_addr == ULLONG_MAX)
			goto not_mapped;
		hop_pte_addr = FUNC6(ctx, hop_addr, virt_addr);
		hop_pte = hdev->asic_funcs->read_pte(hdev, hop_pte_addr);

		offset_mask = OFFSET_MASK;
	}

	if (!(hop_pte & PAGE_PRESENT_MASK))
		goto not_mapped;

	*phys_addr = (hop_pte & ~offset_mask) | (virt_addr & offset_mask);

	goto out;

not_mapped:
	FUNC0(hdev->dev, "virt addr 0x%llx is not mapped to phys addr\n",
			virt_addr);
	rc = -EINVAL;
out:
	FUNC9(&ctx->mmu_lock);
	return rc;
}