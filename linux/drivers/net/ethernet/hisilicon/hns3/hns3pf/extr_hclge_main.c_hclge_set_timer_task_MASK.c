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
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int /*<<< orphan*/  state; int /*<<< orphan*/  service_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_STATE_DOWN ; 
 int /*<<< orphan*/  HCLGE_STATE_SERVICE_SCHED ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hclge_vport* FUNC2 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct hnae3_handle *handle, bool enable)
{
	struct hclge_vport *vport = FUNC2(handle);
	struct hclge_dev *hdev = vport->back;

	if (enable) {
		FUNC3(hdev, FUNC4(HZ));
	} else {
		/* Set the DOWN flag here to disable the service to be
		 * scheduled again
		 */
		FUNC5(HCLGE_STATE_DOWN, &hdev->state);
		FUNC0(&hdev->service_task);
		FUNC1(HCLGE_STATE_SERVICE_SCHED, &hdev->state);
	}
}