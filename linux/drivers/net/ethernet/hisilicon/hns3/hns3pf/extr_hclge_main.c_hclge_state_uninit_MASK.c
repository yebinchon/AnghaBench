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
struct TYPE_7__ {scalar_t__ func; } ;
struct TYPE_5__ {scalar_t__ func; } ;
struct TYPE_8__ {TYPE_1__ work; } ;
struct TYPE_6__ {scalar_t__ function; } ;
struct hclge_dev {TYPE_3__ mbx_service_task; TYPE_3__ rst_service_task; TYPE_4__ service_task; TYPE_2__ reset_timer; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_STATE_DOWN ; 
 int /*<<< orphan*/  HCLGE_STATE_REMOVING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hclge_dev *hdev)
{
	FUNC3(HCLGE_STATE_DOWN, &hdev->state);
	FUNC3(HCLGE_STATE_REMOVING, &hdev->state);

	if (hdev->reset_timer.function)
		FUNC2(&hdev->reset_timer);
	if (hdev->service_task.work.func)
		FUNC0(&hdev->service_task);
	if (hdev->rst_service_task.func)
		FUNC1(&hdev->rst_service_task);
	if (hdev->mbx_service_task.func)
		FUNC1(&hdev->mbx_service_task);
}