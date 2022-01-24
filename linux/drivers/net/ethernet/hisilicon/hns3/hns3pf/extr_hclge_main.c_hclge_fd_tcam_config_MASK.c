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
typedef  int /*<<< orphan*/  u8 ;
struct hclge_fd_tcam_config_3_cmd {int /*<<< orphan*/  tcam_data; } ;
struct hclge_fd_tcam_config_2_cmd {int /*<<< orphan*/  tcam_data; } ;
struct hclge_fd_tcam_config_1_cmd {int xy_sel; int entry_vld; int /*<<< orphan*/  tcam_data; int /*<<< orphan*/  index; int /*<<< orphan*/  port_info; int /*<<< orphan*/  stage; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; int /*<<< orphan*/  flag; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_CMD_FLAG_NEXT ; 
 int /*<<< orphan*/  HCLGE_FD_EPORT_SW_EN_B ; 
 int /*<<< orphan*/  HCLGE_OPC_FD_TCAM_OP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct hclge_dev *hdev, u8 stage, bool sel_x,
				int loc, u8 *key, bool is_add)
{
	struct hclge_fd_tcam_config_1_cmd *req1;
	struct hclge_fd_tcam_config_2_cmd *req2;
	struct hclge_fd_tcam_config_3_cmd *req3;
	struct hclge_desc desc[3];
	int ret;

	FUNC4(&desc[0], HCLGE_OPC_FD_TCAM_OP, false);
	desc[0].flag |= FUNC0(HCLGE_CMD_FLAG_NEXT);
	FUNC4(&desc[1], HCLGE_OPC_FD_TCAM_OP, false);
	desc[1].flag |= FUNC0(HCLGE_CMD_FLAG_NEXT);
	FUNC4(&desc[2], HCLGE_OPC_FD_TCAM_OP, false);

	req1 = (struct hclge_fd_tcam_config_1_cmd *)desc[0].data;
	req2 = (struct hclge_fd_tcam_config_2_cmd *)desc[1].data;
	req3 = (struct hclge_fd_tcam_config_3_cmd *)desc[2].data;

	req1->stage = stage;
	req1->xy_sel = sel_x ? 1 : 0;
	FUNC5(req1->port_info, HCLGE_FD_EPORT_SW_EN_B, 0);
	req1->index = FUNC1(loc);
	req1->entry_vld = sel_x ? is_add : 0;

	if (key) {
		FUNC6(req1->tcam_data, &key[0], sizeof(req1->tcam_data));
		FUNC6(req2->tcam_data, &key[sizeof(req1->tcam_data)],
		       sizeof(req2->tcam_data));
		FUNC6(req3->tcam_data, &key[sizeof(req1->tcam_data) +
		       sizeof(req2->tcam_data)], sizeof(req3->tcam_data));
	}

	ret = FUNC3(&hdev->hw, desc, 3);
	if (ret)
		FUNC2(&hdev->pdev->dev,
			"config tcam key fail, ret=%d\n",
			ret);

	return ret;
}