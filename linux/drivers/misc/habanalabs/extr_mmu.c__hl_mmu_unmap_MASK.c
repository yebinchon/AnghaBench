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
struct asic_fixed_properties {scalar_t__ mmu_dram_default_page_addr; int /*<<< orphan*/  va_space_dram_end_address; int /*<<< orphan*/  va_space_dram_start_address; } ;
struct hl_device {int /*<<< orphan*/  dev; scalar_t__ dram_default_page_mapping; struct asic_fixed_properties asic_prop; } ;
struct hl_ctx {struct hl_device* hdev; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ LAST_MASK ; 
 scalar_t__ PAGE_PRESENT_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE_2MB ; 
 scalar_t__ PTE_PHYS_ADDR_MASK ; 
 scalar_t__ ULLONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct hl_ctx*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct hl_ctx*) ; 
 scalar_t__ FUNC3 (struct hl_ctx*) ; 
 scalar_t__ FUNC4 (struct hl_ctx*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (struct hl_ctx*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (struct hl_ctx*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (struct hl_ctx*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (struct hl_ctx*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (struct hl_ctx*,scalar_t__) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct hl_ctx*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct hl_ctx*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct hl_ctx *ctx, u64 virt_addr)
{
	struct hl_device *hdev = ctx->hdev;
	struct asic_fixed_properties *prop = &hdev->asic_prop;
	u64 hop0_addr = 0, hop0_pte_addr = 0,
		hop1_addr = 0, hop1_pte_addr = 0,
		hop2_addr = 0, hop2_pte_addr = 0,
		hop3_addr = 0, hop3_pte_addr = 0,
		hop4_addr = 0, hop4_pte_addr = 0,
		curr_pte;
	bool is_dram_addr, is_huge, clear_hop3 = true;

	is_dram_addr = FUNC10(virt_addr, PAGE_SIZE_2MB,
				prop->va_space_dram_start_address,
				prop->va_space_dram_end_address);

	hop0_addr = FUNC3(ctx);
	hop0_pte_addr = FUNC4(ctx, hop0_addr, virt_addr);

	curr_pte = *(u64 *) (uintptr_t) hop0_pte_addr;

	hop1_addr = FUNC9(ctx, curr_pte);

	if (hop1_addr == ULLONG_MAX)
		goto not_mapped;

	hop1_pte_addr = FUNC5(ctx, hop1_addr, virt_addr);

	curr_pte = *(u64 *) (uintptr_t) hop1_pte_addr;

	hop2_addr = FUNC9(ctx, curr_pte);

	if (hop2_addr == ULLONG_MAX)
		goto not_mapped;

	hop2_pte_addr = FUNC6(ctx, hop2_addr, virt_addr);

	curr_pte = *(u64 *) (uintptr_t) hop2_pte_addr;

	hop3_addr = FUNC9(ctx, curr_pte);

	if (hop3_addr == ULLONG_MAX)
		goto not_mapped;

	hop3_pte_addr = FUNC7(ctx, hop3_addr, virt_addr);

	curr_pte = *(u64 *) (uintptr_t) hop3_pte_addr;

	is_huge = curr_pte & LAST_MASK;

	if (is_dram_addr && !is_huge) {
		FUNC1(hdev->dev,
				"DRAM unmapping should use huge pages only\n");
		return -EFAULT;
	}

	if (!is_huge) {
		hop4_addr = FUNC9(ctx, curr_pte);

		if (hop4_addr == ULLONG_MAX)
			goto not_mapped;

		hop4_pte_addr = FUNC8(ctx, hop4_addr, virt_addr);

		curr_pte = *(u64 *) (uintptr_t) hop4_pte_addr;

		clear_hop3 = false;
	}

	if (hdev->dram_default_page_mapping && is_dram_addr) {
		u64 default_pte = (prop->mmu_dram_default_page_addr &
				PTE_PHYS_ADDR_MASK) | LAST_MASK |
					PAGE_PRESENT_MASK;
		if (curr_pte == default_pte) {
			FUNC1(hdev->dev,
				"DRAM: hop3 PTE points to zero page, can't unmap, va: 0x%llx\n",
					virt_addr);
			goto not_mapped;
		}

		if (!(curr_pte & PAGE_PRESENT_MASK)) {
			FUNC1(hdev->dev,
				"DRAM: hop3 PTE is cleared! can't unmap, va: 0x%llx\n",
					virt_addr);
			goto not_mapped;
		}

		FUNC12(ctx, hop3_pte_addr, default_pte);
		FUNC11(ctx, hop3_addr);
	} else {
		if (!(curr_pte & PAGE_PRESENT_MASK))
			goto not_mapped;

		if (hop4_addr)
			FUNC0(ctx, hop4_pte_addr);
		else
			FUNC0(ctx, hop3_pte_addr);

		if (hop4_addr && !FUNC11(ctx, hop4_addr))
			clear_hop3 = true;

		if (!clear_hop3)
			goto flush;

		FUNC0(ctx, hop3_pte_addr);

		if (FUNC11(ctx, hop3_addr))
			goto flush;

		FUNC0(ctx, hop2_pte_addr);

		if (FUNC11(ctx, hop2_addr))
			goto flush;

		FUNC0(ctx, hop1_pte_addr);

		if (FUNC11(ctx, hop1_addr))
			goto flush;

		FUNC0(ctx, hop0_pte_addr);
	}

flush:
	FUNC2(ctx);

	return 0;

not_mapped:
	FUNC1(hdev->dev, "virt addr 0x%llx is not mapped to phys addr\n",
		virt_addr);

	return -EINVAL;
}