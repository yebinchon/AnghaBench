#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct mic_device {TYPE_2__* intr_ops; TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* enable_interrupts ) (struct mic_device*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct mic_device*,struct pci_dev*) ; 
 int FUNC2 (struct mic_device*,struct pci_dev*) ; 
 int FUNC3 (struct mic_device*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mic_device*) ; 

int FUNC5(struct mic_device *mdev, struct pci_dev *pdev)
{
	int rc;

	rc = FUNC3(mdev, pdev);
	if (!rc)
		goto done;

	rc = FUNC2(mdev, pdev);
	if (!rc)
		goto done;

	rc = FUNC1(mdev, pdev);
	if (rc) {
		FUNC0(&mdev->pdev->dev, "no usable interrupts\n");
		return rc;
	}
done:
	mdev->intr_ops->enable_interrupts(mdev);
	return 0;
}