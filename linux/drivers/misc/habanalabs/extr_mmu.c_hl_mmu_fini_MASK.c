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
struct hl_device {int /*<<< orphan*/  mmu_pgt_pool; int /*<<< orphan*/  mmu_shadow_hop0; int /*<<< orphan*/  mmu_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct hl_device *hdev)
{
	if (!hdev->mmu_enable)
		return;

	FUNC1(hdev->mmu_shadow_hop0);
	FUNC0(hdev->mmu_pgt_pool);

	/* MMU H/W fini will be done in device hw_fini() */
}