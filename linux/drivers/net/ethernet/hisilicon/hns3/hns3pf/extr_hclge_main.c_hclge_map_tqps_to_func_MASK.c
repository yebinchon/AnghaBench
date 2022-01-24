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
struct hclge_tqp_map_cmd {unsigned int tqp_flag; void* tqp_vid; int /*<<< orphan*/  tqp_vf; void* tqp_id; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_SET_TQP_MAP ; 
 unsigned int HCLGE_TQP_MAP_EN_B ; 
 unsigned int HCLGE_TQP_MAP_TYPE_B ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct hclge_dev *hdev, u16 func_id,
				  u16 tqp_pid, u16 tqp_vid, bool is_pf)
{
	struct hclge_tqp_map_cmd *req;
	struct hclge_desc desc;
	int ret;

	FUNC3(&desc, HCLGE_OPC_SET_TQP_MAP, false);

	req = (struct hclge_tqp_map_cmd *)desc.data;
	req->tqp_id = FUNC0(tqp_pid);
	req->tqp_vf = func_id;
	req->tqp_flag = 1U << HCLGE_TQP_MAP_EN_B;
	if (!is_pf)
		req->tqp_flag |= 1U << HCLGE_TQP_MAP_TYPE_B;
	req->tqp_vid = FUNC0(tqp_vid);

	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret)
		FUNC1(&hdev->pdev->dev, "TQP map failed %d.\n", ret);

	return ret;
}