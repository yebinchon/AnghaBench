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
struct hclge_ets_tc_weight_cmd {int /*<<< orphan*/ * tc_weight; int /*<<< orphan*/  weight_offset; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_ETS_TC_WEIGHT ; 
 int HNAE3_MAX_TC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_dev*,int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct hclge_dev*) ; 

__attribute__((used)) static void FUNC6(struct hclge_dev *hdev)
{
	struct hclge_ets_tc_weight_cmd *ets_weight;
	struct hclge_desc desc;
	int i, ret;

	if (!FUNC5(hdev)) {
		FUNC1(&hdev->pdev->dev,
			 "Only DCB-supported dev supports tc\n");
		return;
	}

	FUNC3(&desc, HCLGE_OPC_ETS_TC_WEIGHT, true);

	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret) {
		FUNC0(&hdev->pdev->dev, "dump tc fail, ret = %d\n", ret);
		return;
	}

	ets_weight = (struct hclge_ets_tc_weight_cmd *)desc.data;

	FUNC1(&hdev->pdev->dev, "dump tc\n");
	FUNC1(&hdev->pdev->dev, "weight_offset: %u\n",
		 ets_weight->weight_offset);

	for (i = 0; i < HNAE3_MAX_TC; i++)
		FUNC4(hdev, ets_weight->tc_weight[i], i,
				      "tc", "no sp mode", "sp mode");
}