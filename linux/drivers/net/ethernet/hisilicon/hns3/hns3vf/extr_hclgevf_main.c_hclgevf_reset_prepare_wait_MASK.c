#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/  flr_rst_cnt; int /*<<< orphan*/  vf_func_rst_cnt; } ;
struct hclgevf_dev {int reset_type; TYPE_2__* pdev; int /*<<< orphan*/  state; TYPE_1__ rst_stats; int /*<<< orphan*/  flr_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_RESET_SYNC_TIME ; 
 int /*<<< orphan*/  HCLGEVF_STATE_CMD_DISABLE ; 
 int /*<<< orphan*/  HCLGE_MBX_RESET ; 
 int /*<<< orphan*/  HNAE3_FLR_DOWN ; 
#define  HNAE3_FLR_RESET 129 
#define  HNAE3_VF_FUNC_RESET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hclgevf_dev*,int) ; 
 int FUNC2 (struct hclgevf_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hclgevf_dev *hdev)
{
#define HCLGEVF_RESET_SYNC_TIME 100

	int ret = 0;

	switch (hdev->reset_type) {
	case HNAE3_VF_FUNC_RESET:
		ret = FUNC2(hdev, HCLGE_MBX_RESET, 0, NULL,
					   0, true, NULL, sizeof(u8));
		hdev->rst_stats.vf_func_rst_cnt++;
		break;
	case HNAE3_FLR_RESET:
		FUNC4(HNAE3_FLR_DOWN, &hdev->flr_state);
		hdev->rst_stats.flr_rst_cnt++;
		break;
	default:
		break;
	}

	FUNC4(HCLGEVF_STATE_CMD_DISABLE, &hdev->state);
	/* inform hardware that preparatory work is done */
	FUNC3(HCLGEVF_RESET_SYNC_TIME);
	FUNC1(hdev, true);
	FUNC0(&hdev->pdev->dev, "prepare reset(%d) wait done, ret:%d\n",
		 hdev->reset_type, ret);

	return ret;
}