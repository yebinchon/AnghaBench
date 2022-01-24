#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int num_vectors; int /*<<< orphan*/  mic_msi_map; } ;
struct mic_device {TYPE_1__ irq_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mic_interrupt ; 
 int /*<<< orphan*/  FUNC4 (struct mic_device*) ; 
 int FUNC5 (struct mic_device*) ; 
 int /*<<< orphan*/  mic_thread_fn ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mic_device*) ; 

__attribute__((used)) static int FUNC9(struct mic_device *mdev, struct pci_dev *pdev)
{
	int rc;

	rc = FUNC7(pdev);
	if (rc) {
		FUNC0(&pdev->dev, "Error enabling MSI. rc = %d\n", rc);
		return rc;
	}

	mdev->irq_info.num_vectors = 1;
	mdev->irq_info.mic_msi_map = FUNC3((sizeof(u32) *
		mdev->irq_info.num_vectors), GFP_KERNEL);

	if (!mdev->irq_info.mic_msi_map) {
		rc = -ENOMEM;
		goto err_nomem1;
	}

	rc = FUNC5(mdev);
	if (rc) {
		FUNC1(&pdev->dev, "Error setting up callbacks\n");
		goto err_nomem2;
	}

	rc = FUNC8(pdev->irq, mic_interrupt, mic_thread_fn,
				  0, "mic-msi", mdev);
	if (rc) {
		FUNC1(&pdev->dev, "Error allocating MSI interrupt\n");
		goto err_irq_req_fail;
	}

	FUNC0(&pdev->dev, "%d MSI irqs setup\n", mdev->irq_info.num_vectors);
	return 0;
err_irq_req_fail:
	FUNC4(mdev);
err_nomem2:
	FUNC2(mdev->irq_info.mic_msi_map);
err_nomem1:
	FUNC6(pdev);
	mdev->irq_info.num_vectors = 0;
	return rc;
}