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
typedef  int /*<<< orphan*/  u32 ;
struct hl_hw_queue {int queue_type; int valid; int /*<<< orphan*/  hw_queue_id; } ;
struct hl_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 scalar_t__ HL_PAGE_SIZE ; 
 scalar_t__ HL_QUEUE_SIZE_IN_BYTES ; 
#define  QUEUE_TYPE_CPU 131 
#define  QUEUE_TYPE_EXT 130 
#define  QUEUE_TYPE_INT 129 
#define  QUEUE_TYPE_NA 128 
 int FUNC1 (struct hl_device*,struct hl_hw_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct hl_device*,struct hl_hw_queue*) ; 
 int FUNC4 (struct hl_device*,struct hl_hw_queue*) ; 

__attribute__((used)) static int FUNC5(struct hl_device *hdev, struct hl_hw_queue *q,
			u32 hw_queue_id)
{
	int rc;

	FUNC0(HL_QUEUE_SIZE_IN_BYTES > HL_PAGE_SIZE);

	q->hw_queue_id = hw_queue_id;

	switch (q->queue_type) {
	case QUEUE_TYPE_EXT:
		rc = FUNC3(hdev, q);
		break;

	case QUEUE_TYPE_INT:
		rc = FUNC4(hdev, q);
		break;

	case QUEUE_TYPE_CPU:
		rc = FUNC1(hdev, q);
		break;

	case QUEUE_TYPE_NA:
		q->valid = 0;
		return 0;

	default:
		FUNC2(hdev->dev, "wrong queue type %d during init\n",
			q->queue_type);
		rc = -EINVAL;
		break;
	}

	if (rc)
		return rc;

	q->valid = 1;

	return 0;
}