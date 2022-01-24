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
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct hclge_cfg_gro_status_cmd {int /*<<< orphan*/  gro_en; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_GRO_GENERIC_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_dev*) ; 

__attribute__((used)) static int FUNC5(struct hclge_dev *hdev, bool en)
{
	struct hclge_cfg_gro_status_cmd *req;
	struct hclge_desc desc;
	int ret;

	if (!FUNC4(hdev))
		return 0;

	FUNC3(&desc, HCLGE_OPC_GRO_GENERIC_CONFIG, false);
	req = (struct hclge_cfg_gro_status_cmd *)desc.data;

	req->gro_en = FUNC0(en ? 1 : 0);

	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret)
		FUNC1(&hdev->pdev->dev,
			"GRO hardware config cmd failed, ret = %d\n", ret);

	return ret;
}