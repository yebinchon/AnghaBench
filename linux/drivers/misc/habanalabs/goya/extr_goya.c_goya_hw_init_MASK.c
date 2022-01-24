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
struct asic_fixed_properties {int dram_pci_bar_size; } ;
struct hl_device {int /*<<< orphan*/  dev; struct asic_fixed_properties asic_prop; } ;

/* Variables and functions */
 scalar_t__ DRAM_PHYS_BASE ; 
 int EIO ; 
 int /*<<< orphan*/  GOYA_CPU_TIMEOUT_USEC ; 
 int /*<<< orphan*/  HL_DEVICE_HW_STATE_DIRTY ; 
 int MMU_PAGE_TABLES_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ U64_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hl_device*) ; 
 int FUNC6 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct hl_device*) ; 
 int FUNC8 (struct hl_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct hl_device*) ; 
 int FUNC14 (struct hl_device*) ; 
 scalar_t__ FUNC15 (struct hl_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct hl_device*) ; 
 int /*<<< orphan*/  mmHW_STATE ; 
 int /*<<< orphan*/  mmPCIE_DBI_DEVICE_ID_VENDOR_ID_REG ; 

__attribute__((used)) static int FUNC17(struct hl_device *hdev)
{
	struct asic_fixed_properties *prop = &hdev->asic_prop;
	u32 val;
	int rc;

	FUNC3(hdev->dev, "Starting initialization of H/W\n");

	/* Perform read from the device to make sure device is up */
	val = FUNC0(mmPCIE_DBI_DEVICE_ID_VENDOR_ID_REG);

	/*
	 * Let's mark in the H/W that we have reached this point. We check
	 * this value in the reset_before_init function to understand whether
	 * we need to reset the chip before doing H/W init. This register is
	 * cleared by the H/W upon H/W reset
	 */
	FUNC1(mmHW_STATE, HL_DEVICE_HW_STATE_DIRTY);

	rc = FUNC8(hdev, GOYA_CPU_TIMEOUT_USEC);
	if (rc) {
		FUNC2(hdev->dev, "failed to initialize CPU\n");
		return rc;
	}

	FUNC16(hdev);

	FUNC10(hdev);

	/*
	 * After CPU initialization is finished, change DDR bar mapping inside
	 * iATU to point to the start address of the MMU page tables
	 */
	if (FUNC15(hdev, DRAM_PHYS_BASE +
			(MMU_PAGE_TABLES_ADDR &
			~(prop->dram_pci_bar_size - 0x1ull))) == U64_MAX) {
		FUNC2(hdev->dev,
			"failed to map DDR bar to MMU page tables\n");
		return -EIO;
	}

	rc = FUNC14(hdev);
	if (rc)
		return rc;

	FUNC12(hdev);

	FUNC9(hdev);

	FUNC11(hdev);

	FUNC13(hdev);

	FUNC7(hdev);

	/* MSI-X must be enabled before CPU queues are initialized */
	rc = FUNC6(hdev);
	if (rc)
		goto disable_queues;

	/* Perform read from the device to flush all MSI-X configuration */
	val = FUNC0(mmPCIE_DBI_DEVICE_ID_VENDOR_ID_REG);

	return 0;

disable_queues:
	FUNC5(hdev);
	FUNC4(hdev);

	return rc;
}