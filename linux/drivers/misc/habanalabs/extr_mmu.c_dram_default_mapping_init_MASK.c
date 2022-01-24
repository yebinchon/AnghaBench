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
struct asic_fixed_properties {int dram_size_for_default_page_mapping; int dram_page_size; int mmu_dram_default_page_addr; } ;
struct hl_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  dram_default_page_mapping; int /*<<< orphan*/  dram_supports_virtual_memory; struct asic_fixed_properties asic_prop; } ;
struct hl_ctx {scalar_t__ asid; int* dram_default_hops; struct hl_device* hdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HL_KERNEL_ASID_ID ; 
 int HL_PTE_SIZE ; 
 int LAST_MASK ; 
 int PAGE_PRESENT_MASK ; 
 int PTE_ENTRIES_IN_HOP ; 
 int PTE_PHYS_ADDR_MASK ; 
 int ULLONG_MAX ; 
 void* FUNC0 (struct hl_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hl_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct hl_ctx*,int) ; 
 int FUNC5 (struct hl_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct hl_ctx*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hl_ctx*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct hl_ctx*,int,int) ; 

__attribute__((used)) static int FUNC11(struct hl_ctx *ctx)
{
	struct hl_device *hdev = ctx->hdev;
	struct asic_fixed_properties *prop = &hdev->asic_prop;
	u64 num_of_hop3, total_hops, hop0_addr, hop1_addr, hop2_addr,
		hop2_pte_addr, hop3_pte_addr, pte_val;
	int rc, i, j, hop3_allocated = 0;

	if ((!hdev->dram_supports_virtual_memory) ||
			(!hdev->dram_default_page_mapping) ||
			(ctx->asid == HL_KERNEL_ASID_ID))
		return 0;

	num_of_hop3 = prop->dram_size_for_default_page_mapping;
	FUNC2(num_of_hop3, prop->dram_page_size);
	FUNC2(num_of_hop3, PTE_ENTRIES_IN_HOP);

	/* add hop1 and hop2 */
	total_hops = num_of_hop3 + 2;

	ctx->dram_default_hops = FUNC8(HL_PTE_SIZE * total_hops,  GFP_KERNEL);
	if (!ctx->dram_default_hops)
		return -ENOMEM;

	hop0_addr = FUNC5(ctx);

	hop1_addr = FUNC0(ctx);
	if (hop1_addr == ULLONG_MAX) {
		FUNC1(hdev->dev, "failed to alloc hop 1\n");
		rc = -ENOMEM;
		goto hop1_err;
	}

	ctx->dram_default_hops[total_hops - 1] = hop1_addr;

	hop2_addr = FUNC0(ctx);
	if (hop2_addr == ULLONG_MAX) {
		FUNC1(hdev->dev, "failed to alloc hop 2\n");
		rc = -ENOMEM;
		goto hop2_err;
	}

	ctx->dram_default_hops[total_hops - 2] = hop2_addr;

	for (i = 0 ; i < num_of_hop3 ; i++) {
		ctx->dram_default_hops[i] = FUNC0(ctx);
		if (ctx->dram_default_hops[i] == ULLONG_MAX) {
			FUNC1(hdev->dev, "failed to alloc hop 3, i: %d\n", i);
			rc = -ENOMEM;
			goto hop3_err;
		}
		hop3_allocated++;
	}

	/* need only pte 0 in hops 0 and 1 */
	pte_val = (hop1_addr & PTE_PHYS_ADDR_MASK) | PAGE_PRESENT_MASK;
	FUNC10(ctx, hop0_addr, pte_val);

	pte_val = (hop2_addr & PTE_PHYS_ADDR_MASK) | PAGE_PRESENT_MASK;
	FUNC10(ctx, hop1_addr, pte_val);
	FUNC6(ctx, hop1_addr);

	hop2_pte_addr = hop2_addr;
	for (i = 0 ; i < num_of_hop3 ; i++) {
		pte_val = (ctx->dram_default_hops[i] & PTE_PHYS_ADDR_MASK) |
				PAGE_PRESENT_MASK;
		FUNC10(ctx, hop2_pte_addr, pte_val);
		FUNC6(ctx, hop2_addr);
		hop2_pte_addr += HL_PTE_SIZE;
	}

	pte_val = (prop->mmu_dram_default_page_addr & PTE_PHYS_ADDR_MASK) |
			LAST_MASK | PAGE_PRESENT_MASK;

	for (i = 0 ; i < num_of_hop3 ; i++) {
		hop3_pte_addr = ctx->dram_default_hops[i];
		for (j = 0 ; j < PTE_ENTRIES_IN_HOP ; j++) {
			FUNC9(ctx, hop3_pte_addr, pte_val);
			FUNC6(ctx, ctx->dram_default_hops[i]);
			hop3_pte_addr += HL_PTE_SIZE;
		}
	}

	FUNC3(ctx);

	return 0;

hop3_err:
	for (i = 0 ; i < hop3_allocated ; i++)
		FUNC4(ctx, ctx->dram_default_hops[i]);

	FUNC4(ctx, hop2_addr);
hop2_err:
	FUNC4(ctx, hop1_addr);
hop1_err:
	FUNC7(ctx->dram_default_hops);

	return rc;
}