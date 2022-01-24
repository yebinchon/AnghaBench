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
struct hclge_reset_cmd {int fun_reset_vfid; int /*<<< orphan*/  mac_func_reset; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_CFG_RESET_FUNC_B ; 
 int /*<<< orphan*/  HCLGE_OPC_CFG_RST_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct hclge_dev *hdev, int func_id)
{
	struct hclge_desc desc;
	struct hclge_reset_cmd *req = (struct hclge_reset_cmd *)desc.data;
	int ret;

	FUNC2(&desc, HCLGE_OPC_CFG_RST_TRIGGER, false);
	FUNC3(req->mac_func_reset, HCLGE_CFG_RESET_FUNC_B, 1);
	req->fun_reset_vfid = func_id;

	ret = FUNC1(&hdev->hw, &desc, 1);
	if (ret)
		FUNC0(&hdev->pdev->dev,
			"send function reset cmd fail, status =%d\n", ret);

	return ret;
}