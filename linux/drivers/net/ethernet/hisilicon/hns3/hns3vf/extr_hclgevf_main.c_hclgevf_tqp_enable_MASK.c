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
struct hclgevf_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclgevf_desc {scalar_t__ data; } ;
struct hclgevf_cfg_com_tqp_queue_cmd {unsigned int enable; void* stream_id; void* tqp_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_OPC_CFG_COM_TQP_QUEUE ; 
 unsigned int HCLGEVF_RING_ID_MASK ; 
 unsigned int HCLGEVF_TQP_ENABLE_B ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclgevf_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclgevf_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct hclgevf_dev *hdev, unsigned int tqp_id,
			      int stream_id, bool enable)
{
	struct hclgevf_cfg_com_tqp_queue_cmd *req;
	struct hclgevf_desc desc;
	int status;

	req = (struct hclgevf_cfg_com_tqp_queue_cmd *)desc.data;

	FUNC3(&desc, HCLGEVF_OPC_CFG_COM_TQP_QUEUE,
				     false);
	req->tqp_id = FUNC0(tqp_id & HCLGEVF_RING_ID_MASK);
	req->stream_id = FUNC0(stream_id);
	if (enable)
		req->enable |= 1U << HCLGEVF_TQP_ENABLE_B;

	status = FUNC2(&hdev->hw, &desc, 1);
	if (status)
		FUNC1(&hdev->pdev->dev,
			"TQP enable fail, status =%d.\n", status);

	return status;
}