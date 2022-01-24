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
struct asic_fixed_properties {int /*<<< orphan*/  mmu_hop_table_size; int /*<<< orphan*/  max_asid; scalar_t__ mmu_hop0_tables_total_size; scalar_t__ mmu_pgt_size; scalar_t__ mmu_pgt_addr; } ;
struct hl_device {int /*<<< orphan*/  mmu_pgt_pool; int /*<<< orphan*/  mmu_shadow_hop0; int /*<<< orphan*/  dev; int /*<<< orphan*/  mmu_enable; struct asic_fixed_properties asic_prop; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct hl_device *hdev)
{
	struct asic_fixed_properties *prop = &hdev->asic_prop;
	int rc;

	if (!hdev->mmu_enable)
		return 0;

	/* MMU H/W init was already done in device hw_init() */

	hdev->mmu_pgt_pool =
			FUNC3(FUNC0(prop->mmu_hop_table_size), -1);

	if (!hdev->mmu_pgt_pool) {
		FUNC1(hdev->dev, "Failed to create page gen pool\n");
		return -ENOMEM;
	}

	rc = FUNC2(hdev->mmu_pgt_pool, prop->mmu_pgt_addr +
			prop->mmu_hop0_tables_total_size,
			prop->mmu_pgt_size - prop->mmu_hop0_tables_total_size,
			-1);
	if (rc) {
		FUNC1(hdev->dev, "Failed to add memory to page gen pool\n");
		goto err_pool_add;
	}

	hdev->mmu_shadow_hop0 = FUNC5(prop->max_asid,
					prop->mmu_hop_table_size,
					GFP_KERNEL | __GFP_ZERO);
	if (!hdev->mmu_shadow_hop0) {
		rc = -ENOMEM;
		goto err_pool_add;
	}

	return 0;

err_pool_add:
	FUNC4(hdev->mmu_pgt_pool);

	return rc;
}