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
struct hclgevf_dev {int /*<<< orphan*/  mbx_service_task; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_STATE_MBX_HANDLING ; 
 int /*<<< orphan*/  HCLGEVF_STATE_MBX_SERVICE_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct hclgevf_dev *hdev)
{
	if (!FUNC2(HCLGEVF_STATE_MBX_SERVICE_SCHED, &hdev->state) &&
	    !FUNC2(HCLGEVF_STATE_MBX_HANDLING, &hdev->state)) {
		FUNC1(HCLGEVF_STATE_MBX_SERVICE_SCHED, &hdev->state);
		FUNC0(&hdev->mbx_service_task);
	}
}