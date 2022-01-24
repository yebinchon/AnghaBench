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
struct hl_device {int disabled; int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; TYPE_1__* asic_funcs; int /*<<< orphan*/  send_cpu_message_lock; int /*<<< orphan*/  in_reset; } ;
struct TYPE_2__ {int (* suspend ) (struct hl_device*) ;int /*<<< orphan*/  (* hw_queues_unlock ) (struct hl_device*) ;int /*<<< orphan*/  (* hw_queues_lock ) (struct hl_device*) ;} ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct hl_device*) ; 
 int FUNC9 (struct hl_device*) ; 

int FUNC10(struct hl_device *hdev)
{
	int rc;

	FUNC5(hdev->pdev);

	/* Block future CS/VM/JOB completion operations */
	rc = FUNC0(&hdev->in_reset, 0, 1);
	if (rc) {
		FUNC1(hdev->dev, "Can't suspend while in reset\n");
		return -EIO;
	}

	/* This blocks all other stuff that is not blocked by in_reset */
	hdev->disabled = true;

	/*
	 * Flush anyone that is inside the critical section of enqueue
	 * jobs to the H/W
	 */
	hdev->asic_funcs->hw_queues_lock(hdev);
	hdev->asic_funcs->hw_queues_unlock(hdev);

	/* Flush processes that are sending message to CPU */
	FUNC2(&hdev->send_cpu_message_lock);
	FUNC3(&hdev->send_cpu_message_lock);

	rc = hdev->asic_funcs->suspend(hdev);
	if (rc)
		FUNC1(hdev->dev,
			"Failed to disable PCI access of device CPU\n");

	/* Shut down the device */
	FUNC4(hdev->pdev);
	FUNC6(hdev->pdev, PCI_D3hot);

	return 0;
}