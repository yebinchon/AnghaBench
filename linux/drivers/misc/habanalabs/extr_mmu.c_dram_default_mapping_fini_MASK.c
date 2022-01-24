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
struct asic_fixed_properties {int dram_size_for_default_page_mapping; int dram_page_size; } ;
struct hl_device {int /*<<< orphan*/  dram_default_page_mapping; int /*<<< orphan*/  dram_supports_virtual_memory; struct asic_fixed_properties asic_prop; } ;
struct hl_ctx {scalar_t__ asid; int* dram_default_hops; struct hl_device* hdev; } ;

/* Variables and functions */
 scalar_t__ HL_KERNEL_ASID_ID ; 
 scalar_t__ HL_PTE_SIZE ; 
 int PTE_ENTRIES_IN_HOP ; 
 int /*<<< orphan*/  FUNC0 (struct hl_ctx*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hl_ctx*) ; 
 int FUNC3 (struct hl_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (struct hl_ctx*,int) ; 

__attribute__((used)) static void FUNC6(struct hl_ctx *ctx)
{
	struct hl_device *hdev = ctx->hdev;
	struct asic_fixed_properties *prop = &hdev->asic_prop;
	u64 num_of_hop3, total_hops, hop0_addr, hop1_addr, hop2_addr,
		hop2_pte_addr, hop3_pte_addr;
	int i, j;

	if ((!hdev->dram_supports_virtual_memory) ||
			(!hdev->dram_default_page_mapping) ||
			(ctx->asid == HL_KERNEL_ASID_ID))
		return;

	num_of_hop3 = prop->dram_size_for_default_page_mapping;
	FUNC1(num_of_hop3, prop->dram_page_size);
	FUNC1(num_of_hop3, PTE_ENTRIES_IN_HOP);

	hop0_addr = FUNC3(ctx);
	/* add hop1 and hop2 */
	total_hops = num_of_hop3 + 2;
	hop1_addr = ctx->dram_default_hops[total_hops - 1];
	hop2_addr = ctx->dram_default_hops[total_hops - 2];

	for (i = 0 ; i < num_of_hop3 ; i++) {
		hop3_pte_addr = ctx->dram_default_hops[i];
		for (j = 0 ; j < PTE_ENTRIES_IN_HOP ; j++) {
			FUNC0(ctx, hop3_pte_addr);
			FUNC5(ctx, ctx->dram_default_hops[i]);
			hop3_pte_addr += HL_PTE_SIZE;
		}
	}

	hop2_pte_addr = hop2_addr;
	hop2_pte_addr = hop2_addr;
	for (i = 0 ; i < num_of_hop3 ; i++) {
		FUNC0(ctx, hop2_pte_addr);
		FUNC5(ctx, hop2_addr);
		hop2_pte_addr += HL_PTE_SIZE;
	}

	FUNC0(ctx, hop1_addr);
	FUNC5(ctx, hop1_addr);
	FUNC0(ctx, hop0_addr);

	FUNC4(ctx->dram_default_hops);

	FUNC2(ctx);
}