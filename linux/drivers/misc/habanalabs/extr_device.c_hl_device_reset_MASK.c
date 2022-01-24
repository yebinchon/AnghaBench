#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hl_device_reset_work {int /*<<< orphan*/  reset_work; struct hl_device* hdev; } ;
struct TYPE_5__ {int completion_queues_count; } ;
struct hl_device {int disabled; int hard_reset_pending; int device_cpu_disabled; int /*<<< orphan*/  in_reset; int /*<<< orphan*/  soft_reset_cnt; int /*<<< orphan*/  dev; int /*<<< orphan*/  hard_reset_cnt; TYPE_4__* asic_funcs; int /*<<< orphan*/  max_power; int /*<<< orphan*/ * kernel_ctx; TYPE_3__* compute_ctx; int /*<<< orphan*/  fpriv_list_lock; scalar_t__ cs_active_cnt; TYPE_2__* idle_busy_ts_arr; scalar_t__ idle_busy_ts_idx; int /*<<< orphan*/ * completion_queue; TYPE_1__ asic_prop; int /*<<< orphan*/  event_queue; int /*<<< orphan*/  send_cpu_message_lock; int /*<<< orphan*/  init_done; } ;
struct TYPE_8__ {int (* hw_init ) (struct hl_device*) ;int (* test_queues ) (struct hl_device*) ;int (* soft_reset_late_init ) (struct hl_device*) ;int /*<<< orphan*/  (* hw_fini ) (struct hl_device*,int) ;int /*<<< orphan*/  (* halt_engines ) (struct hl_device*,int) ;int /*<<< orphan*/  (* hw_queues_unlock ) (struct hl_device*) ;int /*<<< orphan*/  (* hw_queues_lock ) (struct hl_device*) ;} ;
struct TYPE_7__ {scalar_t__ thread_ctx_switch_wait_token; int /*<<< orphan*/  thread_ctx_switch_token; } ;
struct TYPE_6__ {void* idle_to_busy_ts; void* busy_to_idle_ts; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  device_hard_reset_pending ; 
 int /*<<< orphan*/  FUNC6 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct hl_device*) ; 
 int FUNC8 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct hl_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct hl_device*) ; 
 int FUNC11 (struct hl_device*,int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct hl_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct hl_device*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct hl_device*) ; 
 int FUNC16 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct hl_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct hl_device*) ; 
 int FUNC19 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 void* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC22 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct hl_device*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct hl_device*,int) ; 
 int FUNC30 (struct hl_device*) ; 
 int FUNC31 (struct hl_device*) ; 
 int FUNC32 (struct hl_device*) ; 

int FUNC33(struct hl_device *hdev, bool hard_reset,
			bool from_hard_reset_thread)
{
	int i, rc;

	if (!hdev->init_done) {
		FUNC4(hdev->dev,
			"Can't reset before initialization is done\n");
		return 0;
	}

	/*
	 * Prevent concurrency in this function - only one reset should be
	 * done at any given time. Only need to perform this if we didn't
	 * get from the dedicated hard reset thread
	 */
	if (!from_hard_reset_thread) {
		/* Block future CS/VM/JOB completion operations */
		rc = FUNC1(&hdev->in_reset, 0, 1);
		if (rc)
			return 0;

		/* This also blocks future CS/VM/JOB completion operations */
		hdev->disabled = true;

		/* Flush anyone that is inside the critical section of enqueue
		 * jobs to the H/W
		 */
		hdev->asic_funcs->hw_queues_lock(hdev);
		hdev->asic_funcs->hw_queues_unlock(hdev);

		/* Flush anyone that is inside device open */
		FUNC23(&hdev->fpriv_list_lock);
		FUNC24(&hdev->fpriv_list_lock);

		FUNC4(hdev->dev, "Going to RESET device!\n");
	}

again:
	if ((hard_reset) && (!from_hard_reset_thread)) {
		struct hl_device_reset_work *device_reset_work;

		hdev->hard_reset_pending = true;

		device_reset_work = FUNC22(sizeof(*device_reset_work),
						GFP_ATOMIC);
		if (!device_reset_work) {
			rc = -ENOMEM;
			goto out_err;
		}

		/*
		 * Because the reset function can't run from interrupt or
		 * from heartbeat work, we need to call the reset function
		 * from a dedicated work
		 */
		FUNC0(&device_reset_work->reset_work,
				device_hard_reset_pending);
		device_reset_work->hdev = hdev;
		FUNC25(&device_reset_work->reset_work);

		return 0;
	}

	if (hard_reset) {
		FUNC7(hdev);

		/*
		 * Now that the heartbeat thread is closed, flush processes
		 * which are sending messages to CPU
		 */
		FUNC23(&hdev->send_cpu_message_lock);
		FUNC24(&hdev->send_cpu_message_lock);
	}

	/*
	 * Halt the engines and disable interrupts so we won't get any more
	 * completions from H/W and we won't have any accesses from the
	 * H/W to the host machine
	 */
	hdev->asic_funcs->halt_engines(hdev, hard_reset);

	/* Go over all the queues, release all CS and their jobs */
	FUNC10(hdev);

	/* Kill processes here after CS rollback. This is because the process
	 * can't really exit until all its CSs are done, which is what we
	 * do in cs rollback
	 */
	if (from_hard_reset_thread)
		FUNC6(hdev);

	/* Release kernel context */
	if ((hard_reset) && (FUNC12(hdev->kernel_ctx) == 1))
		hdev->kernel_ctx = NULL;

	/* Reset the H/W. It will be in idle state after this returns */
	hdev->asic_funcs->hw_fini(hdev, hard_reset);

	if (hard_reset) {
		FUNC18(hdev);
		FUNC15(hdev);
		FUNC13(hdev, &hdev->event_queue);
	}

	/* Re-initialize PI,CI to 0 in all queues (hw queue, cq) */
	FUNC14(hdev, hard_reset);
	for (i = 0 ; i < hdev->asic_prop.completion_queues_count ; i++)
		FUNC9(hdev, &hdev->completion_queue[i]);

	hdev->idle_busy_ts_idx = 0;
	hdev->idle_busy_ts_arr[0].busy_to_idle_ts = FUNC21(0, 0);
	hdev->idle_busy_ts_arr[0].idle_to_busy_ts = FUNC21(0, 0);

	if (hdev->cs_active_cnt)
		FUNC3(hdev->dev, "CS active cnt %d is not 0 during reset\n",
			hdev->cs_active_cnt);

	FUNC23(&hdev->fpriv_list_lock);

	/* Make sure the context switch phase will run again */
	if (hdev->compute_ctx) {
		FUNC2(&hdev->compute_ctx->thread_ctx_switch_token, 1);
		hdev->compute_ctx->thread_ctx_switch_wait_token = 0;
	}

	FUNC24(&hdev->fpriv_list_lock);

	/* Finished tear-down, starting to re-initialize */

	if (hard_reset) {
		hdev->device_cpu_disabled = false;
		hdev->hard_reset_pending = false;

		if (hdev->kernel_ctx) {
			FUNC3(hdev->dev,
				"kernel ctx was alive during hard reset, something is terribly wrong\n");
			rc = -EBUSY;
			goto out_err;
		}

		rc = FUNC16(hdev);
		if (rc) {
			FUNC4(hdev->dev,
				"Failed to initialize MMU S/W after hard reset\n");
			goto out_err;
		}

		/* Allocate the kernel context */
		hdev->kernel_ctx = FUNC22(sizeof(*hdev->kernel_ctx),
						GFP_KERNEL);
		if (!hdev->kernel_ctx) {
			rc = -ENOMEM;
			goto out_err;
		}

		hdev->compute_ctx = NULL;

		rc = FUNC11(hdev, hdev->kernel_ctx, true);
		if (rc) {
			FUNC4(hdev->dev,
				"failed to init kernel ctx in hard reset\n");
			FUNC20(hdev->kernel_ctx);
			hdev->kernel_ctx = NULL;
			goto out_err;
		}
	}

	rc = hdev->asic_funcs->hw_init(hdev);
	if (rc) {
		FUNC4(hdev->dev,
			"failed to initialize the H/W after reset\n");
		goto out_err;
	}

	hdev->disabled = false;

	/* Check that the communication with the device is working */
	rc = hdev->asic_funcs->test_queues(hdev);
	if (rc) {
		FUNC4(hdev->dev,
			"Failed to detect if device is alive after reset\n");
		goto out_err;
	}

	if (hard_reset) {
		rc = FUNC8(hdev);
		if (rc) {
			FUNC4(hdev->dev,
				"Failed late init after hard reset\n");
			goto out_err;
		}

		rc = FUNC19(hdev);
		if (rc) {
			FUNC4(hdev->dev,
				"Failed to init memory module after hard reset\n");
			goto out_err;
		}

		FUNC17(hdev, hdev->max_power);
	} else {
		rc = hdev->asic_funcs->soft_reset_late_init(hdev);
		if (rc) {
			FUNC4(hdev->dev,
				"Failed late init after soft reset\n");
			goto out_err;
		}
	}

	FUNC2(&hdev->in_reset, 0);

	if (hard_reset)
		hdev->hard_reset_cnt++;
	else
		hdev->soft_reset_cnt++;

	FUNC5(hdev->dev, "Successfully finished resetting the device\n");

	return 0;

out_err:
	hdev->disabled = true;

	if (hard_reset) {
		FUNC4(hdev->dev,
			"Failed to reset! Device is NOT usable\n");
		hdev->hard_reset_cnt++;
	} else {
		FUNC4(hdev->dev,
			"Failed to do soft-reset, trying hard reset\n");
		hdev->soft_reset_cnt++;
		hard_reset = true;
		goto again;
	}

	FUNC2(&hdev->in_reset, 0);

	return rc;
}