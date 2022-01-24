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
typedef  int /*<<< orphan*/  u32 ;
struct hl_device {struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; } ;

/* Variables and functions */
 scalar_t__ CFG_BASE ; 
 int HW_CAP_MME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  mmMME_SM_BASE_ADDRESS_HIGH ; 
 int /*<<< orphan*/  mmMME_SM_BASE_ADDRESS_LOW ; 
 scalar_t__ mmSYNC_MNGR_SOB_OBJ_0 ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(struct hl_device *hdev)
{
	struct goya_device *goya = hdev->asic_specific;
	u32 so_base_lo, so_base_hi;

	if (goya->hw_cap_initialized & HW_CAP_MME)
		return;

	so_base_lo = FUNC3(CFG_BASE + mmSYNC_MNGR_SOB_OBJ_0);
	so_base_hi = FUNC4(CFG_BASE + mmSYNC_MNGR_SOB_OBJ_0);

	FUNC0(mmMME_SM_BASE_ADDRESS_LOW, so_base_lo);
	FUNC0(mmMME_SM_BASE_ADDRESS_HIGH, so_base_hi);

	FUNC2(hdev);
	FUNC1(hdev);

	goya->hw_cap_initialized |= HW_CAP_MME;
}