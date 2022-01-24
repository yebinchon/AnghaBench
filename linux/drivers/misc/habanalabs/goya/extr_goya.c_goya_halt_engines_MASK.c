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
struct hl_device {scalar_t__ pldm; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GOYA_ASYNC_EVENT_ID_HALT_MACHINE ; 
 int /*<<< orphan*/  GOYA_CPU_RESET_WAIT_MSEC ; 
 int /*<<< orphan*/  GOYA_PLDM_RESET_WAIT_MSEC ; 
 int /*<<< orphan*/  GOYA_RESET_WAIT_MSEC ; 
 int /*<<< orphan*/  KMD_MSG_GOTO_WFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct hl_device*) ; 
 int /*<<< orphan*/  mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR ; 
 int /*<<< orphan*/  mmPSOC_GLOBAL_CONF_UBOOT_MAGIC ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct hl_device *hdev, bool hard_reset)
{
	u32 wait_timeout_ms, cpu_timeout_ms;

	FUNC1(hdev->dev,
		"Halting compute engines and disabling interrupts\n");

	if (hdev->pldm) {
		wait_timeout_ms = GOYA_PLDM_RESET_WAIT_MSEC;
		cpu_timeout_ms = GOYA_PLDM_RESET_WAIT_MSEC;
	} else {
		wait_timeout_ms = GOYA_RESET_WAIT_MSEC;
		cpu_timeout_ms = GOYA_CPU_RESET_WAIT_MSEC;
	}

	if (hard_reset) {
		/*
		 * I don't know what is the state of the CPU so make sure it is
		 * stopped in any means necessary
		 */
		FUNC0(mmPSOC_GLOBAL_CONF_UBOOT_MAGIC, KMD_MSG_GOTO_WFE);
		FUNC0(mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR,
			GOYA_ASYNC_EVENT_ID_HALT_MACHINE);
		FUNC13(cpu_timeout_ms);
	}

	FUNC9(hdev);
	FUNC10(hdev);

	FUNC13(wait_timeout_ms);

	FUNC6(hdev);
	FUNC12(hdev);
	FUNC7(hdev);

	FUNC13(wait_timeout_ms);

	FUNC2(hdev);
	FUNC3(hdev);

	FUNC5(hdev);

	if (hard_reset) {
		FUNC4(hdev);
		FUNC8(hdev);
	} else {
		FUNC11(hdev);
	}
}