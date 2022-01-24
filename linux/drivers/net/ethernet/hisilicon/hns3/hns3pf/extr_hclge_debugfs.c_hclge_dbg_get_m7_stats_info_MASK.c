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
typedef  int u32 ;
struct hclge_get_m7_bd_cmd {int /*<<< orphan*/  bd_num; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCLGE_OPC_M7_STATS_BD ; 
 int /*<<< orphan*/  HCLGE_OPC_M7_STATS_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct hclge_dev*,struct hclge_desc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hclge_desc*) ; 
 struct hclge_desc* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct hclge_dev *hdev)
{
	struct hclge_desc *desc_src, *desc_tmp;
	struct hclge_get_m7_bd_cmd *req;
	struct hclge_desc desc;
	u32 bd_num, buf_len;
	int ret, i;

	FUNC3(&desc, HCLGE_OPC_M7_STATS_BD, true);

	req = (struct hclge_get_m7_bd_cmd *)desc.data;
	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret) {
		FUNC0(&hdev->pdev->dev,
			"get firmware statistics bd number failed, ret = %d\n",
			ret);
		return;
	}

	bd_num = FUNC7(req->bd_num);

	buf_len	 = sizeof(struct hclge_desc) * bd_num;
	desc_src = FUNC6(buf_len, GFP_KERNEL);
	if (!desc_src) {
		FUNC0(&hdev->pdev->dev,
			"allocate desc for get_m7_stats failed\n");
		return;
	}

	desc_tmp = desc_src;
	ret  = FUNC4(hdev, desc_tmp, 0, bd_num,
				  HCLGE_OPC_M7_STATS_INFO);
	if (ret) {
		FUNC5(desc_src);
		FUNC0(&hdev->pdev->dev,
			"get firmware statistics failed, ret = %d\n", ret);
		return;
	}

	for (i = 0; i < bd_num; i++) {
		FUNC1(&hdev->pdev->dev, "0x%08x  0x%08x  0x%08x\n",
			 FUNC7(desc_tmp->data[0]),
			 FUNC7(desc_tmp->data[1]),
			 FUNC7(desc_tmp->data[2]));
		FUNC1(&hdev->pdev->dev, "0x%08x  0x%08x  0x%08x\n",
			 FUNC7(desc_tmp->data[3]),
			 FUNC7(desc_tmp->data[4]),
			 FUNC7(desc_tmp->data[5]));

		desc_tmp++;
	}

	FUNC5(desc_src);
}