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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct hl_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  mmu_cache_lock; scalar_t__ pldm; struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; } ;

/* Variables and functions */
 int GOYA_PLDM_MMU_TIMEOUT_USEC ; 
 int HW_CAP_MMU ; 
 int MMU_CONFIG_TIMEOUT_USEC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int STLB_CACHE_INV_INDEX_MASK_MASK ; 
 int STLB_CACHE_INV_PRODUCER_INDEX_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct hl_device*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  mmSTLB_CACHE_INV ; 
 int /*<<< orphan*/  mmSTLB_INV_CONSUMER_INDEX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct hl_device *hdev,
		bool is_hard, u32 asid, u64 va, u64 size)
{
	struct goya_device *goya = hdev->asic_specific;
	u32 status, timeout_usec, inv_data, pi;
	int rc;

	if (!(goya->hw_cap_initialized & HW_CAP_MMU))
		return;

	/* no need in L1 only invalidation in Goya */
	if (!is_hard)
		return;

	if (hdev->pldm)
		timeout_usec = GOYA_PLDM_MMU_TIMEOUT_USEC;
	else
		timeout_usec = MMU_CONFIG_TIMEOUT_USEC;

	FUNC4(&hdev->mmu_cache_lock);

	/*
	 * TODO: currently invalidate entire L0 & L1 as in regular hard
	 * invalidation. Need to apply invalidation of specific cache lines with
	 * mask of ASID & VA & size.
	 * Note that L1 with be flushed entirely in any case.
	 */

	/* L0 & L1 invalidation */
	inv_data = FUNC0(mmSTLB_CACHE_INV);
	/* PI is 8 bit */
	pi = ((inv_data & STLB_CACHE_INV_PRODUCER_INDEX_MASK) + 1) & 0xFF;
	FUNC1(mmSTLB_CACHE_INV,
			(inv_data & STLB_CACHE_INV_INDEX_MASK_MASK) | pi);

	rc = FUNC3(
		hdev,
		mmSTLB_INV_CONSUMER_INDEX,
		status,
		status == pi,
		1000,
		timeout_usec);

	FUNC5(&hdev->mmu_cache_lock);

	if (rc)
		FUNC2(hdev->dev,
			"Timeout when waiting for MMU cache invalidation\n");
}