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
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct mic_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  mic_interrupt ; 
 int /*<<< orphan*/  FUNC2 (struct mic_device*) ; 
 int FUNC3 (struct mic_device*) ; 
 int /*<<< orphan*/  mic_thread_fn ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mic_device*) ; 

__attribute__((used)) static int FUNC6(struct mic_device *mdev, struct pci_dev *pdev)
{
	int rc;

	/* Enable intx */
	FUNC4(pdev, 1);
	rc = FUNC3(mdev);
	if (rc) {
		FUNC1(&pdev->dev, "Error setting up callbacks\n");
		goto err_nomem;
	}

	rc = FUNC5(pdev->irq, mic_interrupt, mic_thread_fn,
				  IRQF_SHARED, "mic-intx", mdev);
	if (rc)
		goto err;

	FUNC0(&pdev->dev, "intx irq setup\n");
	return 0;
err:
	FUNC2(mdev);
err_nomem:
	return rc;
}