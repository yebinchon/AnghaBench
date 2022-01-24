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
struct hclge_func_status_cmd {scalar_t__ pf_state; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_QUERY_FUNC_STATUS ; 
 int /*<<< orphan*/  HCLGE_QUERY_MAX_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct hclge_dev*,struct hclge_func_status_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct hclge_dev *hdev)
{
#define HCLGE_QUERY_MAX_CNT	5

	struct hclge_func_status_cmd *req;
	struct hclge_desc desc;
	int timeout = 0;
	int ret;

	FUNC2(&desc, HCLGE_OPC_QUERY_FUNC_STATUS, true);
	req = (struct hclge_func_status_cmd *)desc.data;

	do {
		ret = FUNC1(&hdev->hw, &desc, 1);
		if (ret) {
			FUNC0(&hdev->pdev->dev,
				"query function status failed %d.\n", ret);
			return ret;
		}

		/* Check pf reset is done */
		if (req->pf_state)
			break;
		FUNC4(1000, 2000);
	} while (timeout++ < HCLGE_QUERY_MAX_CNT);

	ret = FUNC3(hdev, req);

	return ret;
}