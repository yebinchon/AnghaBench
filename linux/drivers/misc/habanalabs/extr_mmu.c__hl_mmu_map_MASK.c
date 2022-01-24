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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct asic_fixed_properties {scalar_t__ mmu_dram_default_page_addr; int /*<<< orphan*/  va_space_dram_end_address; int /*<<< orphan*/  va_space_dram_start_address; } ;
struct hl_device {int /*<<< orphan*/  dev; scalar_t__ dram_default_page_mapping; struct asic_fixed_properties asic_prop; } ;
struct hl_ctx {struct hl_device* hdev; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ LAST_MASK ; 
 scalar_t__ PAGE_PRESENT_MASK ; 
 scalar_t__ PAGE_SIZE_2MB ; 
 scalar_t__ PTE_PHYS_ADDR_MASK ; 
 scalar_t__ ULLONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct hl_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct hl_ctx*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct hl_ctx*,scalar_t__,int*) ; 
 scalar_t__ FUNC5 (struct hl_ctx*) ; 
 scalar_t__ FUNC6 (struct hl_ctx*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (struct hl_ctx*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (struct hl_ctx*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (struct hl_ctx*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (struct hl_ctx*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct hl_ctx*,scalar_t__) ; 
 int FUNC12 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct hl_ctx*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct hl_ctx*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct hl_ctx *ctx, u64 virt_addr, u64 phys_addr,
		u32 page_size)
{
	struct hl_device *hdev = ctx->hdev;
	struct asic_fixed_properties *prop = &hdev->asic_prop;
	u64 hop0_addr = 0, hop0_pte_addr = 0,
		hop1_addr = 0, hop1_pte_addr = 0,
		hop2_addr = 0, hop2_pte_addr = 0,
		hop3_addr = 0, hop3_pte_addr = 0,
		hop4_addr = 0, hop4_pte_addr = 0,
		curr_pte = 0;
	bool hop1_new = false, hop2_new = false, hop3_new = false,
		hop4_new = false, is_huge, is_dram_addr;
	int rc = -ENOMEM;

	/*
	 * This mapping function can map a 4KB/2MB page. For 2MB page there are
	 * only 3 hops rather than 4. Currently the DRAM allocation uses 2MB
	 * pages only but user memory could have been allocated with one of the
	 * two page sizes. Since this is a common code for all the three cases,
	 * we need this hugs page check.
	 */
	is_huge = page_size == PAGE_SIZE_2MB;

	is_dram_addr = FUNC12(virt_addr, page_size,
				prop->va_space_dram_start_address,
				prop->va_space_dram_end_address);

	if (is_dram_addr && !is_huge) {
		FUNC1(hdev->dev, "DRAM mapping should use huge pages only\n");
		return -EFAULT;
	}

	hop0_addr = FUNC5(ctx);
	hop0_pte_addr = FUNC6(ctx, hop0_addr, virt_addr);
	curr_pte = *(u64 *) (uintptr_t) hop0_pte_addr;

	hop1_addr = FUNC4(ctx, curr_pte, &hop1_new);
	if (hop1_addr == ULLONG_MAX)
		goto err;

	hop1_pte_addr = FUNC7(ctx, hop1_addr, virt_addr);
	curr_pte = *(u64 *) (uintptr_t) hop1_pte_addr;

	hop2_addr = FUNC4(ctx, curr_pte, &hop2_new);
	if (hop2_addr == ULLONG_MAX)
		goto err;

	hop2_pte_addr = FUNC8(ctx, hop2_addr, virt_addr);
	curr_pte = *(u64 *) (uintptr_t) hop2_pte_addr;

	hop3_addr = FUNC4(ctx, curr_pte, &hop3_new);
	if (hop3_addr == ULLONG_MAX)
		goto err;

	hop3_pte_addr = FUNC9(ctx, hop3_addr, virt_addr);
	curr_pte = *(u64 *) (uintptr_t) hop3_pte_addr;

	if (!is_huge) {
		hop4_addr = FUNC4(ctx, curr_pte, &hop4_new);
		if (hop4_addr == ULLONG_MAX)
			goto err;

		hop4_pte_addr = FUNC10(ctx, hop4_addr, virt_addr);
		curr_pte = *(u64 *) (uintptr_t) hop4_pte_addr;
	}

	if (hdev->dram_default_page_mapping && is_dram_addr) {
		u64 default_pte = (prop->mmu_dram_default_page_addr &
					PTE_PHYS_ADDR_MASK) | LAST_MASK |
						PAGE_PRESENT_MASK;

		if (curr_pte != default_pte) {
			FUNC1(hdev->dev,
				"DRAM: mapping already exists for virt_addr 0x%llx\n",
					virt_addr);
			rc = -EINVAL;
			goto err;
		}

		if (hop1_new || hop2_new || hop3_new || hop4_new) {
			FUNC1(hdev->dev,
				"DRAM mapping should not allocate more hops\n");
			rc = -EFAULT;
			goto err;
		}
	} else if (curr_pte & PAGE_PRESENT_MASK) {
		FUNC1(hdev->dev,
			"mapping already exists for virt_addr 0x%llx\n",
				virt_addr);

		FUNC0(hdev->dev, "hop0 pte: 0x%llx (0x%llx)\n",
			*(u64 *) (uintptr_t) hop0_pte_addr, hop0_pte_addr);
		FUNC0(hdev->dev, "hop1 pte: 0x%llx (0x%llx)\n",
			*(u64 *) (uintptr_t) hop1_pte_addr, hop1_pte_addr);
		FUNC0(hdev->dev, "hop2 pte: 0x%llx (0x%llx)\n",
			*(u64 *) (uintptr_t) hop2_pte_addr, hop2_pte_addr);
		FUNC0(hdev->dev, "hop3 pte: 0x%llx (0x%llx)\n",
			*(u64 *) (uintptr_t) hop3_pte_addr, hop3_pte_addr);

		if (!is_huge)
			FUNC0(hdev->dev, "hop4 pte: 0x%llx (0x%llx)\n",
				*(u64 *) (uintptr_t) hop4_pte_addr,
				hop4_pte_addr);

		rc = -EINVAL;
		goto err;
	}

	curr_pte = (phys_addr & PTE_PHYS_ADDR_MASK) | LAST_MASK
			| PAGE_PRESENT_MASK;

	if (is_huge)
		FUNC13(ctx, hop3_pte_addr, curr_pte);
	else
		FUNC13(ctx, hop4_pte_addr, curr_pte);

	if (hop1_new) {
		curr_pte =
			(hop1_addr & PTE_PHYS_ADDR_MASK) | PAGE_PRESENT_MASK;
		FUNC14(ctx, hop0_pte_addr, curr_pte);
	}
	if (hop2_new) {
		curr_pte =
			(hop2_addr & PTE_PHYS_ADDR_MASK) | PAGE_PRESENT_MASK;
		FUNC14(ctx, hop1_pte_addr, curr_pte);
		FUNC11(ctx, hop1_addr);
	}
	if (hop3_new) {
		curr_pte =
			(hop3_addr & PTE_PHYS_ADDR_MASK) | PAGE_PRESENT_MASK;
		FUNC14(ctx, hop2_pte_addr, curr_pte);
		FUNC11(ctx, hop2_addr);
	}

	if (!is_huge) {
		if (hop4_new) {
			curr_pte = (hop4_addr & PTE_PHYS_ADDR_MASK) |
					PAGE_PRESENT_MASK;
			FUNC14(ctx, hop3_pte_addr, curr_pte);
			FUNC11(ctx, hop3_addr);
		}

		FUNC11(ctx, hop4_addr);
	} else {
		FUNC11(ctx, hop3_addr);
	}

	FUNC2(ctx);

	return 0;

err:
	if (hop4_new)
		FUNC3(ctx, hop4_addr);
	if (hop3_new)
		FUNC3(ctx, hop3_addr);
	if (hop2_new)
		FUNC3(ctx, hop2_addr);
	if (hop1_new)
		FUNC3(ctx, hop1_addr);

	return rc;
}