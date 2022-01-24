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
struct TYPE_3__ {int completion_queues_count; } ;
struct hl_device {int disabled; int hard_reset_pending; TYPE_2__* asic_funcs; int /*<<< orphan*/ * completion_queue; TYPE_1__ asic_prop; int /*<<< orphan*/  event_queue; int /*<<< orphan*/  dev; scalar_t__ kernel_ctx; int /*<<< orphan*/  fpriv_list_lock; int /*<<< orphan*/  in_reset; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* sw_fini ) (struct hl_device*) ;int /*<<< orphan*/  (* hw_fini ) (struct hl_device*,int) ;int /*<<< orphan*/  (* halt_engines ) (struct hl_device*,int) ;int /*<<< orphan*/  (* hw_queues_unlock ) (struct hl_device*) ;int /*<<< orphan*/  (* hw_queues_lock ) (struct hl_device*) ;} ;

/* Variables and functions */
 int HL_PENDING_RESET_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct hl_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct hl_device*) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct hl_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct hl_device*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct hl_device*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC30 (int,int) ; 

void FUNC31(struct hl_device *hdev)
{
	int i, rc;
	ktime_t timeout;

	FUNC3(hdev->dev, "Removing device\n");

	/*
	 * This function is competing with the reset function, so try to
	 * take the reset atomic and if we are already in middle of reset,
	 * wait until reset function is finished. Reset function is designed
	 * to always finish (could take up to a few seconds in worst case).
	 */

	timeout = FUNC19(FUNC21(),
				HL_PENDING_RESET_PER_SEC * 1000 * 1000 * 4);
	rc = FUNC1(&hdev->in_reset, 0, 1);
	while (rc) {
		FUNC30(50, 200);
		rc = FUNC1(&hdev->in_reset, 0, 1);
		if (FUNC20(FUNC21(), timeout) > 0) {
			FUNC0(1, "Failed to remove device because reset function did not finish\n");
			return;
		}
	}

	/* Mark device as disabled */
	hdev->disabled = true;

	/* Flush anyone that is inside the critical section of enqueue
	 * jobs to the H/W
	 */
	hdev->asic_funcs->hw_queues_lock(hdev);
	hdev->asic_funcs->hw_queues_unlock(hdev);

	/* Flush anyone that is inside device open */
	FUNC22(&hdev->fpriv_list_lock);
	FUNC23(&hdev->fpriv_list_lock);

	hdev->hard_reset_pending = true;

	FUNC15(hdev);

	FUNC7(hdev);

	FUNC12(hdev);

	/*
	 * Halt the engines and disable interrupts so we won't get any more
	 * completions from H/W and we won't have any accesses from the
	 * H/W to the host machine
	 */
	hdev->asic_funcs->halt_engines(hdev, true);

	/* Go over all the queues, release all CS and their jobs */
	FUNC10(hdev);

	/* Kill processes here after CS rollback. This is because the process
	 * can't really exit until all its CSs are done, which is what we
	 * do in cs rollback
	 */
	FUNC6(hdev);

	FUNC8(hdev);

	/* Release kernel context */
	if ((hdev->kernel_ctx) && (FUNC11(hdev->kernel_ctx) != 1))
		FUNC2(hdev->dev, "kernel ctx is still alive\n");

	/* Reset the H/W. It will be in idle state after this returns */
	hdev->asic_funcs->hw_fini(hdev, true);

	FUNC17(hdev);

	FUNC16(hdev);

	FUNC13(hdev, &hdev->event_queue);

	for (i = 0 ; i < hdev->asic_prop.completion_queues_count ; i++)
		FUNC9(hdev, &hdev->completion_queue[i]);
	FUNC18(hdev->completion_queue);

	FUNC14(hdev);

	/* Call ASIC S/W finalize function */
	hdev->asic_funcs->sw_fini(hdev);

	FUNC5(hdev);

	/* Hide devices and sysfs nodes from user */
	FUNC4(hdev);

	FUNC24("removed device successfully\n");
}