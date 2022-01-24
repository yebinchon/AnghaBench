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
typedef  int u32 ;
struct hl_device {struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; } ;

/* Variables and functions */
 scalar_t__ CFG_BASE ; 
 int HW_CAP_TPC ; 
 int /*<<< orphan*/  TPC0_QMAN_BASE_OFFSET ; 
 int /*<<< orphan*/  TPC1_QMAN_BASE_OFFSET ; 
 int /*<<< orphan*/  TPC2_QMAN_BASE_OFFSET ; 
 int /*<<< orphan*/  TPC3_QMAN_BASE_OFFSET ; 
 int /*<<< orphan*/  TPC4_QMAN_BASE_OFFSET ; 
 int /*<<< orphan*/  TPC5_QMAN_BASE_OFFSET ; 
 int /*<<< orphan*/  TPC6_QMAN_BASE_OFFSET ; 
 int /*<<< orphan*/  TPC7_QMAN_BASE_OFFSET ; 
 int TPC_MAX_NUM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hl_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hl_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ mmSYNC_MNGR_SOB_OBJ_0 ; 
 int mmTPC0_CFG_SM_BASE_ADDRESS_HIGH ; 
 int mmTPC0_CFG_SM_BASE_ADDRESS_LOW ; 
 int mmTPC1_CFG_SM_BASE_ADDRESS_LOW ; 
 int FUNC4 (scalar_t__) ; 

void FUNC5(struct hl_device *hdev)
{
	struct goya_device *goya = hdev->asic_specific;
	u32 so_base_lo, so_base_hi;
	u32 cfg_off = mmTPC1_CFG_SM_BASE_ADDRESS_LOW -
			mmTPC0_CFG_SM_BASE_ADDRESS_LOW;
	int i;

	if (goya->hw_cap_initialized & HW_CAP_TPC)
		return;

	so_base_lo = FUNC3(CFG_BASE + mmSYNC_MNGR_SOB_OBJ_0);
	so_base_hi = FUNC4(CFG_BASE + mmSYNC_MNGR_SOB_OBJ_0);

	for (i = 0 ; i < TPC_MAX_NUM ; i++) {
		FUNC0(mmTPC0_CFG_SM_BASE_ADDRESS_LOW + i * cfg_off,
				so_base_lo);
		FUNC0(mmTPC0_CFG_SM_BASE_ADDRESS_HIGH + i * cfg_off,
				so_base_hi);
	}

	FUNC2(hdev, TPC0_QMAN_BASE_OFFSET, 0);
	FUNC2(hdev, TPC1_QMAN_BASE_OFFSET, 1);
	FUNC2(hdev, TPC2_QMAN_BASE_OFFSET, 2);
	FUNC2(hdev, TPC3_QMAN_BASE_OFFSET, 3);
	FUNC2(hdev, TPC4_QMAN_BASE_OFFSET, 4);
	FUNC2(hdev, TPC5_QMAN_BASE_OFFSET, 5);
	FUNC2(hdev, TPC6_QMAN_BASE_OFFSET, 6);
	FUNC2(hdev, TPC7_QMAN_BASE_OFFSET, 7);

	for (i = 0 ; i < TPC_MAX_NUM ; i++)
		FUNC1(hdev, i);

	goya->hw_cap_initialized |= HW_CAP_TPC;
}