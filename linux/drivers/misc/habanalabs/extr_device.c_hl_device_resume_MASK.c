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
struct hl_device {int disabled; int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; int /*<<< orphan*/  in_reset; TYPE_1__* asic_funcs; } ;
struct TYPE_2__ {int (* resume ) (struct hl_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct hl_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct hl_device*) ; 

int FUNC10(struct hl_device *hdev)
{
	int rc;

	FUNC8(hdev->pdev, PCI_D0);
	FUNC6(hdev->pdev);
	rc = FUNC5(hdev->pdev);
	if (rc) {
		FUNC1(hdev->dev,
			"Failed to enable PCI device in resume\n");
		return rc;
	}

	FUNC7(hdev->pdev);

	rc = hdev->asic_funcs->resume(hdev);
	if (rc) {
		FUNC1(hdev->dev, "Failed to resume device after suspend\n");
		goto disable_device;
	}


	hdev->disabled = false;
	FUNC0(&hdev->in_reset, 0);

	rc = FUNC2(hdev, true, false);
	if (rc) {
		FUNC1(hdev->dev, "Failed to reset device during resume\n");
		goto disable_device;
	}

	return 0;

disable_device:
	FUNC3(hdev->pdev);
	FUNC4(hdev->pdev);

	return rc;
}