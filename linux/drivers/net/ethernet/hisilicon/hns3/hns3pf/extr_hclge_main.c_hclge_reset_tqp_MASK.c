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
typedef  int /*<<< orphan*/  u16 ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HCLGE_TQP_RESET_TRY_TIMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hnae3_handle*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hclge_dev*,int /*<<< orphan*/ ) ; 
 struct hclge_vport* FUNC3 (struct hnae3_handle*) ; 
 int FUNC4 (struct hclge_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct hclge_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

int FUNC7(struct hnae3_handle *handle, u16 queue_id)
{
	struct hclge_vport *vport = FUNC3(handle);
	struct hclge_dev *hdev = vport->back;
	int reset_try_times = 0;
	int reset_status;
	u16 queue_gid;
	int ret;

	queue_gid = FUNC1(handle, queue_id);

	ret = FUNC5(hdev, queue_id, 0, false);
	if (ret) {
		FUNC0(&hdev->pdev->dev, "Disable tqp fail, ret = %d\n", ret);
		return ret;
	}

	ret = FUNC4(hdev, queue_gid, true);
	if (ret) {
		FUNC0(&hdev->pdev->dev,
			"Send reset tqp cmd fail, ret = %d\n", ret);
		return ret;
	}

	while (reset_try_times++ < HCLGE_TQP_RESET_TRY_TIMES) {
		reset_status = FUNC2(hdev, queue_gid);
		if (reset_status)
			break;

		/* Wait for tqp hw reset */
		FUNC6(1000, 1200);
	}

	if (reset_try_times >= HCLGE_TQP_RESET_TRY_TIMES) {
		FUNC0(&hdev->pdev->dev, "Reset TQP fail\n");
		return ret;
	}

	ret = FUNC4(hdev, queue_gid, false);
	if (ret)
		FUNC0(&hdev->pdev->dev,
			"Deassert the soft reset fail, ret = %d\n", ret);

	return ret;
}