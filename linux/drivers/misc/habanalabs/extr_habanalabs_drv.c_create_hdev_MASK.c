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
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  device; } ;
struct hl_device {scalar_t__ asic_type; int disabled; int dma_mask; int id; int id_control; struct pci_dev* pdev; int /*<<< orphan*/  timeout_jiffies; scalar_t__ pldm; int /*<<< orphan*/  reset_on_lockup; int /*<<< orphan*/  major; } ;
typedef  enum hl_asic_type { ____Placeholder_hl_asic_type } hl_asic_type ;

/* Variables and functions */
 scalar_t__ ASIC_INVALID ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HL_MAX_MINORS ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hl_devs_idr ; 
 int /*<<< orphan*/  hl_devs_idr_lock ; 
 int /*<<< orphan*/  hl_major ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hl_device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hl_device*) ; 
 struct hl_device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  reset_on_lockup ; 
 int /*<<< orphan*/  FUNC10 (struct hl_device*) ; 
 int timeout_locked ; 

int FUNC11(struct hl_device **dev, struct pci_dev *pdev,
		enum hl_asic_type asic_type, int minor)
{
	struct hl_device *hdev;
	int rc, main_id, ctrl_id = 0;

	*dev = NULL;

	hdev = FUNC5(sizeof(*hdev), GFP_KERNEL);
	if (!hdev)
		return -ENOMEM;

	/* First, we must find out which ASIC are we handling. This is needed
	 * to configure the behavior of the driver (kernel parameters)
	 */
	if (pdev) {
		hdev->asic_type = FUNC1(pdev->device);
		if (hdev->asic_type == ASIC_INVALID) {
			FUNC0(&pdev->dev, "Unsupported ASIC\n");
			rc = -ENODEV;
			goto free_hdev;
		}
	} else {
		hdev->asic_type = asic_type;
	}

	hdev->major = hl_major;
	hdev->reset_on_lockup = reset_on_lockup;
	hdev->pldm = 0;

	FUNC10(hdev);

	if (timeout_locked)
		hdev->timeout_jiffies = FUNC6(timeout_locked * 1000);
	else
		hdev->timeout_jiffies = MAX_SCHEDULE_TIMEOUT;

	hdev->disabled = true;
	hdev->pdev = pdev; /* can be NULL in case of simulator device */

	/* Set default DMA mask to 32 bits */
	hdev->dma_mask = 32;

	FUNC7(&hl_devs_idr_lock);

	/* Always save 2 numbers, 1 for main device and 1 for control.
	 * They must be consecutive
	 */
	main_id = FUNC2(&hl_devs_idr, hdev, 0, HL_MAX_MINORS,
				GFP_KERNEL);

	if (main_id >= 0)
		ctrl_id = FUNC2(&hl_devs_idr, hdev, main_id + 1,
					main_id + 2, GFP_KERNEL);

	FUNC8(&hl_devs_idr_lock);

	if ((main_id < 0) || (ctrl_id < 0)) {
		if ((main_id == -ENOSPC) || (ctrl_id == -ENOSPC))
			FUNC9("too many devices in the system\n");

		if (main_id >= 0) {
			FUNC7(&hl_devs_idr_lock);
			FUNC3(&hl_devs_idr, main_id);
			FUNC8(&hl_devs_idr_lock);
		}

		rc = -EBUSY;
		goto free_hdev;
	}

	hdev->id = main_id;
	hdev->id_control = ctrl_id;

	*dev = hdev;

	return 0;

free_hdev:
	FUNC4(hdev);
	return rc;
}