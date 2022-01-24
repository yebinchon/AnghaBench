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
struct hl_device {int /*<<< orphan*/  dev; scalar_t__ pldm; struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; int /*<<< orphan*/  events_stat; } ;

/* Variables and functions */
 int CPU_BOOT_STATUS_DRAM_RDY ; 
 int DMA_MME_TPC_RESET ; 
 int /*<<< orphan*/  DRAM_PHYS_BASE ; 
 int GOYA_ASYNC_EVENT_ID_SOFT_RESET ; 
 int GOYA_CPU_TIMEOUT_USEC ; 
 int GOYA_PLDM_RESET_TIMEOUT_MSEC ; 
 int GOYA_RESET_TIMEOUT_MSEC ; 
 int HW_CAP_CPU ; 
 int HW_CAP_CPU_Q ; 
 int HW_CAP_DDR_0 ; 
 int HW_CAP_DDR_1 ; 
 int HW_CAP_DMA ; 
 int HW_CAP_GOLDEN ; 
 int HW_CAP_MME ; 
 int HW_CAP_MMU ; 
 int HW_CAP_TPC ; 
 int HW_CAP_TPC_MBIST ; 
 int PSOC_GLOBAL_CONF_BOOT_SEQ_RE_START_IND_SHIFT ; 
 int PSOC_GLOBAL_CONF_BTM_FSM_STATE_MASK ; 
 int PSOC_GLOBAL_CONF_SW_BTM_FSM_CTRL_SHIFT ; 
 int RESET_ALL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hl_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hl_device*) ; 
 int FUNC7 (struct hl_device*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR ; 
 int /*<<< orphan*/  mmPSOC_GLOBAL_CONF_BOOT_SEQ_RE_START ; 
 int /*<<< orphan*/  mmPSOC_GLOBAL_CONF_BTM_FSM ; 
 int /*<<< orphan*/  mmPSOC_GLOBAL_CONF_SW_ALL_RST_CFG ; 
 int /*<<< orphan*/  mmPSOC_GLOBAL_CONF_SW_BTM_FSM ; 
 int /*<<< orphan*/  mmPSOC_GLOBAL_CONF_WARM_REBOOT ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct hl_device *hdev, bool hard_reset)
{
	struct goya_device *goya = hdev->asic_specific;
	u32 reset_timeout_ms, status;

	if (hdev->pldm)
		reset_timeout_ms = GOYA_PLDM_RESET_TIMEOUT_MSEC;
	else
		reset_timeout_ms = GOYA_RESET_TIMEOUT_MSEC;

	if (hard_reset) {
		FUNC5(hdev, DRAM_PHYS_BASE);
		FUNC4(hdev);
		FUNC6(hdev);

		FUNC1(mmPSOC_GLOBAL_CONF_SW_ALL_RST_CFG, RESET_ALL);
		FUNC3(hdev->dev,
			"Issued HARD reset command, going to wait %dms\n",
			reset_timeout_ms);
	} else {
		FUNC1(mmPSOC_GLOBAL_CONF_SW_ALL_RST_CFG, DMA_MME_TPC_RESET);
		FUNC3(hdev->dev,
			"Issued SOFT reset command, going to wait %dms\n",
			reset_timeout_ms);
	}

	/*
	 * After hard reset, we can't poll the BTM_FSM register because the PSOC
	 * itself is in reset. In either reset we need to wait until the reset
	 * is deasserted
	 */
	FUNC9(reset_timeout_ms);

	status = FUNC0(mmPSOC_GLOBAL_CONF_BTM_FSM);
	if (status & PSOC_GLOBAL_CONF_BTM_FSM_STATE_MASK)
		FUNC2(hdev->dev,
			"Timeout while waiting for device to reset 0x%x\n",
			status);

	if (!hard_reset) {
		goya->hw_cap_initialized &= ~(HW_CAP_DMA | HW_CAP_MME |
						HW_CAP_GOLDEN | HW_CAP_TPC);
		FUNC1(mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR,
				GOYA_ASYNC_EVENT_ID_SOFT_RESET);
		return;
	}

	/* Chicken bit to re-initiate boot sequencer flow */
	FUNC1(mmPSOC_GLOBAL_CONF_BOOT_SEQ_RE_START,
		1 << PSOC_GLOBAL_CONF_BOOT_SEQ_RE_START_IND_SHIFT);
	/* Move boot manager FSM to pre boot sequencer init state */
	FUNC1(mmPSOC_GLOBAL_CONF_SW_BTM_FSM,
			0xA << PSOC_GLOBAL_CONF_SW_BTM_FSM_CTRL_SHIFT);

	goya->hw_cap_initialized &= ~(HW_CAP_CPU | HW_CAP_CPU_Q |
					HW_CAP_DDR_0 | HW_CAP_DDR_1 |
					HW_CAP_DMA | HW_CAP_MME |
					HW_CAP_MMU | HW_CAP_TPC_MBIST |
					HW_CAP_GOLDEN | HW_CAP_TPC);
	FUNC8(goya->events_stat, 0, sizeof(goya->events_stat));

	if (!hdev->pldm) {
		int rc;
		/* In case we are running inside VM and the VM is
		 * shutting down, we need to make sure CPU boot-loader
		 * is running before we can continue the VM shutdown.
		 * That is because the VM will send an FLR signal that
		 * we must answer
		 */
		FUNC3(hdev->dev,
			"Going to wait up to %ds for CPU boot loader\n",
			GOYA_CPU_TIMEOUT_USEC / 1000 / 1000);

		rc = FUNC7(
			hdev,
			mmPSOC_GLOBAL_CONF_WARM_REBOOT,
			status,
			(status == CPU_BOOT_STATUS_DRAM_RDY),
			10000,
			GOYA_CPU_TIMEOUT_USEC);
		if (rc)
			FUNC2(hdev->dev,
				"failed to wait for CPU boot loader\n");
	}
}