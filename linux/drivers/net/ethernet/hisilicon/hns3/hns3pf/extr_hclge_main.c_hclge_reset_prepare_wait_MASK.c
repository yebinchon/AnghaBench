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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  flr_rst_cnt; int /*<<< orphan*/  pf_rst_cnt; } ;
struct hclge_dev {int reset_type; TYPE_2__* pdev; int /*<<< orphan*/  hw; TYPE_1__ rst_stats; int /*<<< orphan*/  flr_state; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCLGE_PF_OTHER_INT_REG ; 
 int /*<<< orphan*/  HCLGE_RESET_SYNC_TIME ; 
 int /*<<< orphan*/  HCLGE_STATE_CMD_DISABLE ; 
 int /*<<< orphan*/  HCLGE_VECTOR0_IMP_RESET_INT_B ; 
 int /*<<< orphan*/  HNAE3_FLR_DOWN ; 
#define  HNAE3_FLR_RESET 130 
#define  HNAE3_FUNC_RESET 129 
#define  HNAE3_IMP_RESET 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct hclge_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hclge_dev*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hclge_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct hclge_dev *hdev)
{
	u32 reg_val;
	int ret = 0;

	switch (hdev->reset_type) {
	case HNAE3_FUNC_RESET:
		/* to confirm whether all running VF is ready
		 * before request PF reset
		 */
		ret = FUNC4(hdev);
		if (ret)
			return ret;

		ret = FUNC3(hdev, 0);
		if (ret) {
			FUNC1(&hdev->pdev->dev,
				"asserting function reset fail %d!\n", ret);
			return ret;
		}

		/* After performaning pf reset, it is not necessary to do the
		 * mailbox handling or send any command to firmware, because
		 * any mailbox handling or command to firmware is only valid
		 * after hclge_cmd_init is called.
		 */
		FUNC10(HCLGE_STATE_CMD_DISABLE, &hdev->state);
		hdev->rst_stats.pf_rst_cnt++;
		break;
	case HNAE3_FLR_RESET:
		/* to confirm whether all running VF is ready
		 * before request PF reset
		 */
		ret = FUNC4(hdev);
		if (ret)
			return ret;

		FUNC10(HCLGE_STATE_CMD_DISABLE, &hdev->state);
		FUNC10(HNAE3_FLR_DOWN, &hdev->flr_state);
		hdev->rst_stats.flr_rst_cnt++;
		break;
	case HNAE3_IMP_RESET:
		FUNC5(hdev);
		reg_val = FUNC6(&hdev->hw, HCLGE_PF_OTHER_INT_REG);
		FUNC8(&hdev->hw, HCLGE_PF_OTHER_INT_REG,
				FUNC0(HCLGE_VECTOR0_IMP_RESET_INT_B) | reg_val);
		break;
	default:
		break;
	}

	/* inform hardware that preparatory work is done */
	FUNC9(HCLGE_RESET_SYNC_TIME);
	FUNC7(hdev, true);
	FUNC2(&hdev->pdev->dev, "prepare wait ok\n");

	return ret;
}