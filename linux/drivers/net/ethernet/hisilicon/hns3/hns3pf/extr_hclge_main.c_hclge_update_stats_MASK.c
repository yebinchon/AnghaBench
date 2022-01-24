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
struct net_device_stats {int dummy; } ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int /*<<< orphan*/  state; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_STATE_STATISTICS_UPDATING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct hclge_vport* FUNC2 (struct hnae3_handle*) ; 
 int FUNC3 (struct hclge_dev*) ; 
 int FUNC4 (struct hnae3_handle*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct hnae3_handle *handle,
			       struct net_device_stats *net_stats)
{
	struct hclge_vport *vport = FUNC2(handle);
	struct hclge_dev *hdev = vport->back;
	int status;

	if (FUNC5(HCLGE_STATE_STATISTICS_UPDATING, &hdev->state))
		return;

	status = FUNC3(hdev);
	if (status)
		FUNC1(&hdev->pdev->dev,
			"Update MAC stats fail, status = %d.\n",
			status);

	status = FUNC4(handle);
	if (status)
		FUNC1(&hdev->pdev->dev,
			"Update TQPS stats fail, status = %d.\n",
			status);

	FUNC0(HCLGE_STATE_STATISTICS_UPDATING, &hdev->state);
}