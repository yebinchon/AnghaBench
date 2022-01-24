#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mbx_mutex; } ;
struct TYPE_6__ {scalar_t__ func; } ;
struct TYPE_5__ {scalar_t__ function; } ;
struct hclgevf_dev {TYPE_1__ mbx_resp; TYPE_3__ rst_service_task; TYPE_3__ mbx_service_task; TYPE_3__ service_task; TYPE_2__ service_timer; TYPE_3__ keep_alive_task; TYPE_2__ keep_alive_timer; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_STATE_DOWN ; 
 int /*<<< orphan*/  HCLGEVF_STATE_REMOVING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hclgevf_dev *hdev)
{
	FUNC3(HCLGEVF_STATE_DOWN, &hdev->state);
	FUNC3(HCLGEVF_STATE_REMOVING, &hdev->state);

	if (hdev->keep_alive_timer.function)
		FUNC1(&hdev->keep_alive_timer);
	if (hdev->keep_alive_task.func)
		FUNC0(&hdev->keep_alive_task);
	if (hdev->service_timer.function)
		FUNC1(&hdev->service_timer);
	if (hdev->service_task.func)
		FUNC0(&hdev->service_task);
	if (hdev->mbx_service_task.func)
		FUNC0(&hdev->mbx_service_task);
	if (hdev->rst_service_task.func)
		FUNC0(&hdev->rst_service_task);

	FUNC2(&hdev->mbx_resp.mbx_mutex);
}