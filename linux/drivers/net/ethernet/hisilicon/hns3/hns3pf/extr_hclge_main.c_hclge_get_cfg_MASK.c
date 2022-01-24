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
typedef  int /*<<< orphan*/  u32 ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct hclge_cfg_param_cmd {int /*<<< orphan*/  offset; } ;
struct hclge_cfg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_CFG_OFFSET_M ; 
 int /*<<< orphan*/  HCLGE_CFG_OFFSET_S ; 
 unsigned int HCLGE_CFG_RD_LEN_BYTES ; 
 int /*<<< orphan*/  HCLGE_CFG_RD_LEN_M ; 
 int /*<<< orphan*/  HCLGE_CFG_RD_LEN_S ; 
 unsigned int HCLGE_CFG_RD_LEN_UNIT ; 
 int /*<<< orphan*/  HCLGE_OPC_GET_CFG_PARAM ; 
 int HCLGE_PF_CFG_DESC_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_cfg*,struct hclge_desc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct hclge_dev *hdev, struct hclge_cfg *hcfg)
{
	struct hclge_desc desc[HCLGE_PF_CFG_DESC_NUM];
	struct hclge_cfg_param_cmd *req;
	unsigned int i;
	int ret;

	for (i = 0; i < HCLGE_PF_CFG_DESC_NUM; i++) {
		u32 offset = 0;

		req = (struct hclge_cfg_param_cmd *)desc[i].data;
		FUNC3(&desc[i], HCLGE_OPC_GET_CFG_PARAM,
					   true);
		FUNC5(offset, HCLGE_CFG_OFFSET_M,
				HCLGE_CFG_OFFSET_S, i * HCLGE_CFG_RD_LEN_BYTES);
		/* Len should be united by 4 bytes when send to hardware */
		FUNC5(offset, HCLGE_CFG_RD_LEN_M, HCLGE_CFG_RD_LEN_S,
				HCLGE_CFG_RD_LEN_BYTES / HCLGE_CFG_RD_LEN_UNIT);
		req->offset = FUNC0(offset);
	}

	ret = FUNC2(&hdev->hw, desc, HCLGE_PF_CFG_DESC_NUM);
	if (ret) {
		FUNC1(&hdev->pdev->dev, "get config failed %d.\n", ret);
		return ret;
	}

	FUNC4(hcfg, desc);

	return 0;
}