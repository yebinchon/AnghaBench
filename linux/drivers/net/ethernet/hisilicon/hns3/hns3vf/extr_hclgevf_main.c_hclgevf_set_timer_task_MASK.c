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
struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int /*<<< orphan*/  state; int /*<<< orphan*/  service_task; int /*<<< orphan*/  service_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_STATE_SERVICE_SCHED ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct hclgevf_dev* FUNC3 (struct hnae3_handle*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct hnae3_handle *handle, bool enable)
{
	struct hclgevf_dev *hdev = FUNC3(handle);

	if (enable) {
		FUNC4(&hdev->service_timer, jiffies + HZ);
	} else {
		FUNC2(&hdev->service_timer);
		FUNC0(&hdev->service_task);
		FUNC1(HCLGEVF_STATE_SERVICE_SCHED, &hdev->state);
	}
}