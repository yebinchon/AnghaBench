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
typedef  int u16 ;
struct hclge_reset_tqp_queue_cmd {int /*<<< orphan*/  ready_to_reset; int /*<<< orphan*/  tqp_id; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_RESET_TQP_QUEUE ; 
 int HCLGE_RING_ID_MASK ; 
 int /*<<< orphan*/  HCLGE_TQP_RESET_B ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hclge_dev *hdev, u16 queue_id)
{
	struct hclge_reset_tqp_queue_cmd *req;
	struct hclge_desc desc;
	int ret;

	FUNC3(&desc, HCLGE_OPC_RESET_TQP_QUEUE, true);

	req = (struct hclge_reset_tqp_queue_cmd *)desc.data;
	req->tqp_id = FUNC0(queue_id & HCLGE_RING_ID_MASK);

	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret) {
		FUNC1(&hdev->pdev->dev,
			"Get reset status error, status =%d\n", ret);
		return ret;
	}

	return FUNC4(req->ready_to_reset, HCLGE_TQP_RESET_B);
}