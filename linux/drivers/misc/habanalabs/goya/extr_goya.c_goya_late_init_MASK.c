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
struct asic_fixed_properties {int /*<<< orphan*/  dram_size; } ;
struct hl_device {int /*<<< orphan*/  dev; struct asic_fixed_properties asic_prop; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARMCP_PACKET_ENABLE_PCI_ACCESS ; 
 int /*<<< orphan*/  GOYA_ASYNC_EVENT_ID_INTS_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hl_device*) ; 
 int FUNC4 (struct hl_device*) ; 
 int FUNC5 (struct hl_device*) ; 
 int FUNC6 (struct hl_device*) ; 
 int FUNC7 (struct hl_device*) ; 
 int FUNC8 (struct hl_device*) ; 
 int FUNC9 (struct hl_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR ; 
 int /*<<< orphan*/  mmMMU_LOG2_DDR_SIZE ; 

int FUNC11(struct hl_device *hdev)
{
	struct asic_fixed_properties *prop = &hdev->asic_prop;
	int rc;

	FUNC3(hdev);

	rc = FUNC6(hdev);
	if (rc) {
		FUNC1(hdev->dev,
			"Failed to clear MMU page tables range %d\n", rc);
		return rc;
	}

	rc = FUNC7(hdev);
	if (rc) {
		FUNC1(hdev->dev, "Failed to set DRAM default page %d\n", rc);
		return rc;
	}

	rc = FUNC5(hdev);
	if (rc)
		return rc;

	rc = FUNC4(hdev);
	if (rc)
		return rc;

	rc = FUNC8(hdev);
	if (rc)
		return rc;

	rc = FUNC2(hdev);
	if (rc) {
		FUNC1(hdev->dev, "Failed to get armcp info %d\n", rc);
		return rc;
	}

	/* Now that we have the DRAM size in ASIC prop, we need to check
	 * its size and configure the DMA_IF DDR wrap protection (which is in
	 * the MMU block) accordingly. The value is the log2 of the DRAM size
	 */
	FUNC0(mmMMU_LOG2_DDR_SIZE, FUNC10(prop->dram_size));

	rc = FUNC9(hdev, ARMCP_PACKET_ENABLE_PCI_ACCESS);
	if (rc) {
		FUNC1(hdev->dev,
			"Failed to enable PCI access from CPU %d\n", rc);
		return rc;
	}

	FUNC0(mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR,
			GOYA_ASYNC_EVENT_ID_INTS_REGISTER);

	return 0;
}