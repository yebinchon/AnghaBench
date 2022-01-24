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
typedef  unsigned int u16 ;
struct hclgevf_rss_tc_mode_cmd {int /*<<< orphan*/ * rss_tc_mode; } ;
struct hclgevf_dev {int hw_tc_map; TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclgevf_desc {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int HCLGEVF_MAX_TC_NUM ; 
 int /*<<< orphan*/  HCLGEVF_OPC_RSS_TC_MODE ; 
 int /*<<< orphan*/  HCLGEVF_RSS_TC_OFFSET_M ; 
 int /*<<< orphan*/  HCLGEVF_RSS_TC_OFFSET_S ; 
 int /*<<< orphan*/  HCLGEVF_RSS_TC_SIZE_M ; 
 int /*<<< orphan*/  HCLGEVF_RSS_TC_SIZE_S ; 
 int /*<<< orphan*/  HCLGEVF_RSS_TC_VALID_B ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclgevf_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclgevf_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC6 (unsigned int) ; 
 unsigned int FUNC7 (unsigned int) ; 

__attribute__((used)) static int FUNC8(struct hclgevf_dev *hdev,  u16 rss_size)
{
	struct hclgevf_rss_tc_mode_cmd *req;
	u16 tc_offset[HCLGEVF_MAX_TC_NUM];
	u16 tc_valid[HCLGEVF_MAX_TC_NUM];
	u16 tc_size[HCLGEVF_MAX_TC_NUM];
	struct hclgevf_desc desc;
	u16 roundup_size;
	int status;
	unsigned int i;

	req = (struct hclgevf_rss_tc_mode_cmd *)desc.data;

	roundup_size = FUNC7(rss_size);
	roundup_size = FUNC6(roundup_size);

	for (i = 0; i < HCLGEVF_MAX_TC_NUM; i++) {
		tc_valid[i] = !!(hdev->hw_tc_map & FUNC0(i));
		tc_size[i] = roundup_size;
		tc_offset[i] = rss_size * i;
	}

	FUNC3(&desc, HCLGEVF_OPC_RSS_TC_MODE, false);
	for (i = 0; i < HCLGEVF_MAX_TC_NUM; i++) {
		FUNC4(req->rss_tc_mode[i], HCLGEVF_RSS_TC_VALID_B,
			      (tc_valid[i] & 0x1));
		FUNC5(req->rss_tc_mode[i], HCLGEVF_RSS_TC_SIZE_M,
				HCLGEVF_RSS_TC_SIZE_S, tc_size[i]);
		FUNC5(req->rss_tc_mode[i], HCLGEVF_RSS_TC_OFFSET_M,
				HCLGEVF_RSS_TC_OFFSET_S, tc_offset[i]);
	}
	status = FUNC2(&hdev->hw, &desc, 1);
	if (status)
		FUNC1(&hdev->pdev->dev,
			"VF failed(=%d) to set rss tc mode\n", status);

	return status;
}