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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hinic_hwdev {int /*<<< orphan*/  aeqs; int /*<<< orphan*/  msix_entries; struct hinic_hwif* hwif; } ;
struct hinic_pfhwdev {struct hinic_hwdev hwdev; } ;
struct hinic_hwif {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 struct hinic_hwdev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HINIC_DEFAULT_AEQ_LEN ; 
 int /*<<< orphan*/  HINIC_EQ_PAGE_SIZE ; 
 int FUNC1 (struct hinic_hwif*) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_hwif*) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_hwif*) ; 
 int /*<<< orphan*/  HINIC_OUTBOUND_ENABLE ; 
 int /*<<< orphan*/  HINIC_RES_ACTIVE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hinic_hwdev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hinic_pfhwdev*) ; 
 int FUNC9 (struct hinic_hwdev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct hinic_hwif*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hinic_hwif*) ; 
 int FUNC13 (struct hinic_hwif*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct hinic_hwif*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct hinic_hwdev*) ; 
 int FUNC16 (struct hinic_hwdev*) ; 
 int FUNC17 (struct hinic_pfhwdev*) ; 
 int FUNC18 (struct hinic_hwdev*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct hinic_hwdev*) ; 

struct hinic_hwdev *FUNC20(struct pci_dev *pdev)
{
	struct hinic_pfhwdev *pfhwdev;
	struct hinic_hwdev *hwdev;
	struct hinic_hwif *hwif;
	int err, num_aeqs;

	hwif = FUNC6(&pdev->dev, sizeof(*hwif), GFP_KERNEL);
	if (!hwif)
		return FUNC0(-ENOMEM);

	err = FUNC13(hwif, pdev);
	if (err) {
		FUNC4(&pdev->dev, "Failed to init HW interface\n");
		return FUNC0(err);
	}

	if (!FUNC2(hwif) && !FUNC3(hwif)) {
		FUNC4(&pdev->dev, "Unsupported PCI Function type\n");
		err = -EFAULT;
		goto err_func_type;
	}

	pfhwdev = FUNC6(&pdev->dev, sizeof(*pfhwdev), GFP_KERNEL);
	if (!pfhwdev) {
		err = -ENOMEM;
		goto err_pfhwdev_alloc;
	}

	hwdev = &pfhwdev->hwdev;
	hwdev->hwif = hwif;

	err = FUNC16(hwdev);
	if (err) {
		FUNC4(&pdev->dev, "Failed to init msix\n");
		goto err_init_msix;
	}

	err = FUNC19(hwdev);
	if (err) {
		FUNC5(&pdev->dev, "outbound - disabled, try again\n");
		FUNC14(hwif, HINIC_OUTBOUND_ENABLE);
	}

	num_aeqs = FUNC1(hwif);

	err = FUNC11(&hwdev->aeqs, hwif, num_aeqs,
			      HINIC_DEFAULT_AEQ_LEN, HINIC_EQ_PAGE_SIZE,
			      hwdev->msix_entries);
	if (err) {
		FUNC4(&pdev->dev, "Failed to init async event queues\n");
		goto err_aeqs_init;
	}

	err = FUNC17(pfhwdev);
	if (err) {
		FUNC4(&pdev->dev, "Failed to init PF HW device\n");
		goto err_init_pfhwdev;
	}

	err = FUNC9(hwdev);
	if (err) {
		FUNC4(&pdev->dev, "Failed to get device capabilities\n");
		goto err_dev_cap;
	}

	err = FUNC15(hwdev);
	if (err) {
		FUNC4(&pdev->dev, "Failed to init function table\n");
		goto err_init_fw_ctxt;
	}

	err = FUNC18(hwdev, HINIC_RES_ACTIVE);
	if (err) {
		FUNC4(&pdev->dev, "Failed to set resources state\n");
		goto err_resources_state;
	}

	return hwdev;

err_resources_state:
err_init_fw_ctxt:
err_dev_cap:
	FUNC8(pfhwdev);

err_init_pfhwdev:
	FUNC10(&hwdev->aeqs);

err_aeqs_init:
	FUNC7(hwdev);

err_init_msix:
err_pfhwdev_alloc:
err_func_type:
	FUNC12(hwif);
	return FUNC0(err);
}