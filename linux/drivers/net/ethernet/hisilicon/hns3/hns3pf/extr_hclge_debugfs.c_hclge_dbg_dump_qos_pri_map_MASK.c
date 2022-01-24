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
struct hclge_qos_pri_map_cmd {int /*<<< orphan*/  pri7_tc; int /*<<< orphan*/  pri6_tc; int /*<<< orphan*/  pri5_tc; int /*<<< orphan*/  pri4_tc; int /*<<< orphan*/  pri3_tc; int /*<<< orphan*/  pri2_tc; int /*<<< orphan*/  pri1_tc; int /*<<< orphan*/  pri0_tc; int /*<<< orphan*/  vlan_pri; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_PRI_TO_TC_MAPPING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct hclge_dev *hdev)
{
	struct hclge_qos_pri_map_cmd *pri_map;
	struct hclge_desc desc;
	int ret;

	FUNC3(&desc, HCLGE_OPC_PRI_TO_TC_MAPPING, true);

	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret) {
		FUNC0(&hdev->pdev->dev,
			"dump qos pri map fail, ret = %d\n", ret);
		return;
	}

	pri_map = (struct hclge_qos_pri_map_cmd *)desc.data;
	FUNC1(&hdev->pdev->dev, "dump qos pri map\n");
	FUNC1(&hdev->pdev->dev, "vlan_to_pri: 0x%x\n", pri_map->vlan_pri);
	FUNC1(&hdev->pdev->dev, "pri_0_to_tc: 0x%x\n", pri_map->pri0_tc);
	FUNC1(&hdev->pdev->dev, "pri_1_to_tc: 0x%x\n", pri_map->pri1_tc);
	FUNC1(&hdev->pdev->dev, "pri_2_to_tc: 0x%x\n", pri_map->pri2_tc);
	FUNC1(&hdev->pdev->dev, "pri_3_to_tc: 0x%x\n", pri_map->pri3_tc);
	FUNC1(&hdev->pdev->dev, "pri_4_to_tc: 0x%x\n", pri_map->pri4_tc);
	FUNC1(&hdev->pdev->dev, "pri_5_to_tc: 0x%x\n", pri_map->pri5_tc);
	FUNC1(&hdev->pdev->dev, "pri_6_to_tc: 0x%x\n", pri_map->pri6_tc);
	FUNC1(&hdev->pdev->dev, "pri_7_to_tc: 0x%x\n", pri_map->pri7_tc);
}