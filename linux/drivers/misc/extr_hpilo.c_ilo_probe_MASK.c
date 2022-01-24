#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;
struct ilo_hwinfo {TYPE_1__ cdev; int /*<<< orphan*/  open_lock; int /*<<< orphan*/  fifo_lock; int /*<<< orphan*/  alloc_lock; struct pci_dev* ilo_dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ILO_NAME ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int MAX_CCB ; 
 int MAX_ILO_DEV ; 
 int MIN_CCB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ilo_hwinfo*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct device* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct ilo_hwinfo*) ; 
 int /*<<< orphan*/  ilo_blacklist ; 
 int /*<<< orphan*/  ilo_class ; 
 int /*<<< orphan*/  FUNC9 (struct ilo_hwinfo*) ; 
 int /*<<< orphan*/  FUNC10 (struct ilo_hwinfo*) ; 
 int /*<<< orphan*/  ilo_fops ; 
 int* ilo_hwdev ; 
 int /*<<< orphan*/  ilo_isr ; 
 int /*<<< orphan*/  ilo_major ; 
 int FUNC11 (struct pci_dev*,struct ilo_hwinfo*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,struct ilo_hwinfo*) ; 
 int /*<<< orphan*/  FUNC13 (struct ilo_hwinfo*) ; 
 struct ilo_hwinfo* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int max_ccb ; 
 int FUNC15 (struct pci_dev*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 int FUNC18 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,struct ilo_hwinfo*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ilo_hwinfo*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct pci_dev *pdev,
			       const struct pci_device_id *ent)
{
	int devnum, minor, start, error = 0;
	struct ilo_hwinfo *ilo_hw;

	if (FUNC16(ilo_blacklist, pdev)) {
		FUNC5(&pdev->dev, "Not supported on this device\n");
		return -ENODEV;
	}

	if (max_ccb > MAX_CCB)
		max_ccb = MAX_CCB;
	else if (max_ccb < MIN_CCB)
		max_ccb = MIN_CCB;

	/* find a free range for device files */
	for (devnum = 0; devnum < MAX_ILO_DEV; devnum++) {
		if (ilo_hwdev[devnum] == 0) {
			ilo_hwdev[devnum] = 1;
			break;
		}
	}

	if (devnum == MAX_ILO_DEV) {
		FUNC6(&pdev->dev, "Error finding free device\n");
		return -ENODEV;
	}

	/* track global allocations for this device */
	error = -ENOMEM;
	ilo_hw = FUNC14(sizeof(*ilo_hw), GFP_KERNEL);
	if (!ilo_hw)
		goto out;

	ilo_hw->ilo_dev = pdev;
	FUNC22(&ilo_hw->alloc_lock);
	FUNC22(&ilo_hw->fifo_lock);
	FUNC22(&ilo_hw->open_lock);

	error = FUNC15(pdev);
	if (error)
		goto free;

	FUNC20(pdev);

	error = FUNC18(pdev, ILO_NAME);
	if (error)
		goto disable;

	error = FUNC11(pdev, ilo_hw);
	if (error)
		goto free_regions;

	FUNC19(pdev, ilo_hw);
	FUNC4(ilo_hw);

	error = FUNC21(pdev->irq, ilo_isr, IRQF_SHARED, "hpilo", ilo_hw);
	if (error)
		goto unmap;

	FUNC10(ilo_hw);

	FUNC3(&ilo_hw->cdev, &ilo_fops);
	ilo_hw->cdev.owner = THIS_MODULE;
	start = devnum * max_ccb;
	error = FUNC2(&ilo_hw->cdev, FUNC1(ilo_major, start), max_ccb);
	if (error) {
		FUNC6(&pdev->dev, "Could not add cdev\n");
		goto remove_isr;
	}

	for (minor = 0 ; minor < max_ccb; minor++) {
		struct device *dev;
		dev = FUNC7(ilo_class, &pdev->dev,
				    FUNC1(ilo_major, minor), NULL,
				    "hpilo!d%dccb%d", devnum, minor);
		if (FUNC0(dev))
			FUNC6(&pdev->dev, "Could not create files\n");
	}

	return 0;
remove_isr:
	FUNC9(ilo_hw);
	FUNC8(pdev->irq, ilo_hw);
unmap:
	FUNC12(pdev, ilo_hw);
free_regions:
	FUNC17(pdev);
disable:
/*	pci_disable_device(pdev);  see comment in ilo_remove */
free:
	FUNC13(ilo_hw);
out:
	ilo_hwdev[devnum] = 0;
	return error;
}