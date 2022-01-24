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
struct hl_hw_queue {int /*<<< orphan*/  queue_type; } ;
struct asic_fixed_properties {TYPE_1__* hw_queues_props; } ;
struct hl_device {struct hl_hw_queue* kernel_queues; int /*<<< orphan*/  dev; struct asic_fixed_properties asic_prop; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HL_MAX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hl_device*,struct hl_hw_queue*) ; 
 int FUNC2 (struct hl_device*,struct hl_hw_queue*,int) ; 
 struct hl_hw_queue* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hl_hw_queue*) ; 

int FUNC5(struct hl_device *hdev)
{
	struct asic_fixed_properties *asic = &hdev->asic_prop;
	struct hl_hw_queue *q;
	int i, rc, q_ready_cnt;

	hdev->kernel_queues = FUNC3(HL_MAX_QUEUES,
				sizeof(*hdev->kernel_queues), GFP_KERNEL);

	if (!hdev->kernel_queues) {
		FUNC0(hdev->dev, "Not enough memory for H/W queues\n");
		return -ENOMEM;
	}

	/* Initialize the H/W queues */
	for (i = 0, q_ready_cnt = 0, q = hdev->kernel_queues;
			i < HL_MAX_QUEUES ; i++, q_ready_cnt++, q++) {

		q->queue_type = asic->hw_queues_props[i].type;
		rc = FUNC2(hdev, q, i);
		if (rc) {
			FUNC0(hdev->dev,
				"failed to initialize queue %d\n", i);
			goto release_queues;
		}
	}

	return 0;

release_queues:
	for (i = 0, q = hdev->kernel_queues ; i < q_ready_cnt ; i++, q++)
		FUNC1(hdev, q);

	FUNC4(hdev->kernel_queues);

	return rc;
}