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
struct hclge_rss_tc_mode_cmd {int /*<<< orphan*/ * rss_tc_mode; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HCLGE_MAX_TC_NUM ; 
 int /*<<< orphan*/  HCLGE_OPC_RSS_TC_MODE ; 
 int /*<<< orphan*/  HCLGE_RSS_TC_OFFSET_M ; 
 int /*<<< orphan*/  HCLGE_RSS_TC_OFFSET_S ; 
 int /*<<< orphan*/  HCLGE_RSS_TC_SIZE_M ; 
 int /*<<< orphan*/  HCLGE_RSS_TC_SIZE_S ; 
 int /*<<< orphan*/  HCLGE_RSS_TC_VALID_B ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct hclge_dev *hdev, u16 *tc_valid,
				 u16 *tc_size, u16 *tc_offset)
{
	struct hclge_rss_tc_mode_cmd *req;
	struct hclge_desc desc;
	int ret;
	int i;

	FUNC3(&desc, HCLGE_OPC_RSS_TC_MODE, false);
	req = (struct hclge_rss_tc_mode_cmd *)desc.data;

	for (i = 0; i < HCLGE_MAX_TC_NUM; i++) {
		u16 mode = 0;

		FUNC4(mode, HCLGE_RSS_TC_VALID_B, (tc_valid[i] & 0x1));
		FUNC5(mode, HCLGE_RSS_TC_SIZE_M,
				HCLGE_RSS_TC_SIZE_S, tc_size[i]);
		FUNC5(mode, HCLGE_RSS_TC_OFFSET_M,
				HCLGE_RSS_TC_OFFSET_S, tc_offset[i]);

		req->rss_tc_mode[i] = FUNC0(mode);
	}

	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret)
		FUNC1(&hdev->pdev->dev,
			"Configure rss tc mode fail, status = %d\n", ret);

	return ret;
}