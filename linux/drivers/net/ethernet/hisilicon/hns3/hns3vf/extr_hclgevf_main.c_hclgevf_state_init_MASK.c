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
struct TYPE_2__ {int /*<<< orphan*/  mbx_mutex; } ;
struct hclgevf_dev {int /*<<< orphan*/  state; TYPE_1__ mbx_resp; int /*<<< orphan*/  rst_service_task; int /*<<< orphan*/  service_task; int /*<<< orphan*/  service_timer; int /*<<< orphan*/  mbx_service_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_STATE_DOWN ; 
 int /*<<< orphan*/  HCLGEVF_STATE_MBX_HANDLING ; 
 int /*<<< orphan*/  HCLGEVF_STATE_MBX_SERVICE_SCHED ; 
 int /*<<< orphan*/  HCLGEVF_STATE_SERVICE_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hclgevf_mailbox_service_task ; 
 int /*<<< orphan*/  hclgevf_reset_service_task ; 
 int /*<<< orphan*/  hclgevf_service_task ; 
 int /*<<< orphan*/  hclgevf_service_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hclgevf_dev *hdev)
{
	/* setup tasks for the MBX */
	FUNC0(&hdev->mbx_service_task, hclgevf_mailbox_service_task);
	FUNC1(HCLGEVF_STATE_MBX_SERVICE_SCHED, &hdev->state);
	FUNC1(HCLGEVF_STATE_MBX_HANDLING, &hdev->state);

	/* setup tasks for service timer */
	FUNC4(&hdev->service_timer, hclgevf_service_timer, 0);

	FUNC0(&hdev->service_task, hclgevf_service_task);
	FUNC1(HCLGEVF_STATE_SERVICE_SCHED, &hdev->state);

	FUNC0(&hdev->rst_service_task, hclgevf_reset_service_task);

	FUNC2(&hdev->mbx_resp.mbx_mutex);

	/* bring the device down */
	FUNC3(HCLGEVF_STATE_DOWN, &hdev->state);
}