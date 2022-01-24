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
struct hwmon_chip_info {int dummy; } ;
struct hl_device_idle_busy_ts {int dummy; } ;
struct hl_device {int asic_type; TYPE_1__* asic_funcs; int /*<<< orphan*/ * cq_wq; int /*<<< orphan*/ * eq_wq; int /*<<< orphan*/  hl_chip_info; int /*<<< orphan*/  in_reset; int /*<<< orphan*/  fpriv_list_lock; int /*<<< orphan*/  fpriv_list; int /*<<< orphan*/  hw_queues_mirror_lock; int /*<<< orphan*/  hw_queues_mirror_list; int /*<<< orphan*/  mmu_cache_lock; int /*<<< orphan*/  debug_lock; int /*<<< orphan*/  send_cpu_message_lock; int /*<<< orphan*/  kernel_cb_mgr; int /*<<< orphan*/  idle_busy_ts_arr; int /*<<< orphan*/  dev; int /*<<< orphan*/  asic_name; } ;
struct TYPE_2__ {int (* early_init ) (struct hl_device*) ;int /*<<< orphan*/  (* early_fini ) (struct hl_device*) ;} ;

/* Variables and functions */
#define  ASIC_GOYA 128 
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  HL_IDLE_BUSY_TS_ARR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WQ_UNBOUND ; 
 int __GFP_ZERO ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hl_device*) ; 
 int FUNC7 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC15 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct hl_device*) ; 

__attribute__((used)) static int FUNC17(struct hl_device *hdev)
{
	int rc;

	switch (hdev->asic_type) {
	case ASIC_GOYA:
		FUNC5(hdev);
		FUNC14(hdev->asic_name, "GOYA", sizeof(hdev->asic_name));
		break;
	default:
		FUNC4(hdev->dev, "Unrecognized ASIC type %d\n",
			hdev->asic_type);
		return -EINVAL;
	}

	rc = hdev->asic_funcs->early_init(hdev);
	if (rc)
		return rc;

	rc = FUNC7(hdev);
	if (rc)
		goto early_fini;

	hdev->cq_wq = FUNC1("hl-free-jobs", WQ_UNBOUND, 0);
	if (hdev->cq_wq == NULL) {
		FUNC4(hdev->dev, "Failed to allocate CQ workqueue\n");
		rc = -ENOMEM;
		goto asid_fini;
	}

	hdev->eq_wq = FUNC1("hl-events", WQ_UNBOUND, 0);
	if (hdev->eq_wq == NULL) {
		FUNC4(hdev->dev, "Failed to allocate EQ workqueue\n");
		rc = -ENOMEM;
		goto free_cq_wq;
	}

	hdev->hl_chip_info = FUNC11(sizeof(struct hwmon_chip_info),
					GFP_KERNEL);
	if (!hdev->hl_chip_info) {
		rc = -ENOMEM;
		goto free_eq_wq;
	}

	hdev->idle_busy_ts_arr = FUNC10(HL_IDLE_BUSY_TS_ARR_SIZE,
					sizeof(struct hl_device_idle_busy_ts),
					(GFP_KERNEL | __GFP_ZERO));
	if (!hdev->idle_busy_ts_arr) {
		rc = -ENOMEM;
		goto free_chip_info;
	}

	FUNC8(&hdev->kernel_cb_mgr);

	FUNC12(&hdev->send_cpu_message_lock);
	FUNC12(&hdev->debug_lock);
	FUNC12(&hdev->mmu_cache_lock);
	FUNC0(&hdev->hw_queues_mirror_list);
	FUNC13(&hdev->hw_queues_mirror_lock);
	FUNC0(&hdev->fpriv_list);
	FUNC12(&hdev->fpriv_list_lock);
	FUNC2(&hdev->in_reset, 0);

	return 0;

free_chip_info:
	FUNC9(hdev->hl_chip_info);
free_eq_wq:
	FUNC3(hdev->eq_wq);
free_cq_wq:
	FUNC3(hdev->cq_wq);
asid_fini:
	FUNC6(hdev);
early_fini:
	if (hdev->asic_funcs->early_fini)
		hdev->asic_funcs->early_fini(hdev);

	return rc;
}