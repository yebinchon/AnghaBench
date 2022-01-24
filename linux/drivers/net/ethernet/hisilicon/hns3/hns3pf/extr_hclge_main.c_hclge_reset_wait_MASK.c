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
typedef  scalar_t__ u32 ;
struct hclge_dev {int reset_type; TYPE_1__* pdev; int /*<<< orphan*/  hw; int /*<<< orphan*/  flr_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ HCLGE_FUN_RST_ING ; 
 scalar_t__ HCLGE_FUN_RST_ING_B ; 
 scalar_t__ HCLGE_GLOBAL_RESET_BIT ; 
 scalar_t__ HCLGE_GLOBAL_RESET_REG ; 
 scalar_t__ HCLGE_IMP_RESET_BIT ; 
 scalar_t__ HCLGE_RESET_WAIT_CNT ; 
 int /*<<< orphan*/  HCLGE_RESET_WATI_MS ; 
 int /*<<< orphan*/  HNAE3_FLR_DONE ; 
#define  HNAE3_FLR_RESET 131 
#define  HNAE3_FUNC_RESET 130 
#define  HNAE3_GLOBAL_RESET 129 
#define  HNAE3_IMP_RESET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hclge_dev *hdev)
{
#define HCLGE_RESET_WATI_MS	100
#define HCLGE_RESET_WAIT_CNT	200
	u32 val, reg, reg_bit;
	u32 cnt = 0;

	switch (hdev->reset_type) {
	case HNAE3_IMP_RESET:
		reg = HCLGE_GLOBAL_RESET_REG;
		reg_bit = HCLGE_IMP_RESET_BIT;
		break;
	case HNAE3_GLOBAL_RESET:
		reg = HCLGE_GLOBAL_RESET_REG;
		reg_bit = HCLGE_GLOBAL_RESET_BIT;
		break;
	case HNAE3_FUNC_RESET:
		reg = HCLGE_FUN_RST_ING;
		reg_bit = HCLGE_FUN_RST_ING_B;
		break;
	case HNAE3_FLR_RESET:
		break;
	default:
		FUNC0(&hdev->pdev->dev,
			"Wait for unsupported reset type: %d\n",
			hdev->reset_type);
		return -EINVAL;
	}

	if (hdev->reset_type == HNAE3_FLR_RESET) {
		while (!FUNC5(HNAE3_FLR_DONE, &hdev->flr_state) &&
		       cnt++ < HCLGE_RESET_WAIT_CNT)
			FUNC4(HCLGE_RESET_WATI_MS);

		if (!FUNC5(HNAE3_FLR_DONE, &hdev->flr_state)) {
			FUNC0(&hdev->pdev->dev,
				"flr wait timeout: %d\n", cnt);
			return -EBUSY;
		}

		return 0;
	}

	val = FUNC2(&hdev->hw, reg);
	while (FUNC3(val, reg_bit) && cnt < HCLGE_RESET_WAIT_CNT) {
		FUNC4(HCLGE_RESET_WATI_MS);
		val = FUNC2(&hdev->hw, reg);
		cnt++;
	}

	if (cnt >= HCLGE_RESET_WAIT_CNT) {
		FUNC1(&hdev->pdev->dev,
			 "Wait for reset timeout: %d\n", hdev->reset_type);
		return -EBUSY;
	}

	return 0;
}