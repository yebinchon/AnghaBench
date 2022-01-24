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
struct hclge_dev {int /*<<< orphan*/  hw; TYPE_1__* pdev; } ;
struct hclge_desc {void** data; int /*<<< orphan*/  flag; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int revision; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_CMD_FLAG_NEXT ; 
 int /*<<< orphan*/  HCLGE_PPP_CMD0_INT_CMD ; 
 int /*<<< orphan*/  HCLGE_PPP_CMD1_INT_CMD ; 
 int /*<<< orphan*/  HCLGE_PPP_MPF_ECC_ERR_INT0_EN ; 
 int /*<<< orphan*/  HCLGE_PPP_MPF_ECC_ERR_INT0_EN_MASK ; 
 int /*<<< orphan*/  HCLGE_PPP_MPF_ECC_ERR_INT1_EN ; 
 int /*<<< orphan*/  HCLGE_PPP_MPF_ECC_ERR_INT1_EN_MASK ; 
 int /*<<< orphan*/  HCLGE_PPP_MPF_ECC_ERR_INT2_EN ; 
 int /*<<< orphan*/  HCLGE_PPP_MPF_ECC_ERR_INT2_EN_MASK ; 
 int /*<<< orphan*/  HCLGE_PPP_MPF_ECC_ERR_INT3_EN ; 
 int /*<<< orphan*/  HCLGE_PPP_MPF_ECC_ERR_INT3_EN_MASK ; 
 int /*<<< orphan*/  HCLGE_PPP_PF_ERR_INT_EN ; 
 int /*<<< orphan*/  HCLGE_PPP_PF_ERR_INT_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct hclge_dev *hdev, u32 cmd,
					    bool en)
{
	struct device *dev = &hdev->pdev->dev;
	struct hclge_desc desc[2];
	int ret;

	/* configure PPP error interrupts */
	FUNC4(&desc[0], cmd, false);
	desc[0].flag |= FUNC0(HCLGE_CMD_FLAG_NEXT);
	FUNC4(&desc[1], cmd, false);

	if (cmd == HCLGE_PPP_CMD0_INT_CMD) {
		if (en) {
			desc[0].data[0] =
				FUNC1(HCLGE_PPP_MPF_ECC_ERR_INT0_EN);
			desc[0].data[1] =
				FUNC1(HCLGE_PPP_MPF_ECC_ERR_INT1_EN);
			desc[0].data[4] = FUNC1(HCLGE_PPP_PF_ERR_INT_EN);
		}

		desc[1].data[0] =
			FUNC1(HCLGE_PPP_MPF_ECC_ERR_INT0_EN_MASK);
		desc[1].data[1] =
			FUNC1(HCLGE_PPP_MPF_ECC_ERR_INT1_EN_MASK);
		if (hdev->pdev->revision >= 0x21)
			desc[1].data[2] =
				FUNC1(HCLGE_PPP_PF_ERR_INT_EN_MASK);
	} else if (cmd == HCLGE_PPP_CMD1_INT_CMD) {
		if (en) {
			desc[0].data[0] =
				FUNC1(HCLGE_PPP_MPF_ECC_ERR_INT2_EN);
			desc[0].data[1] =
				FUNC1(HCLGE_PPP_MPF_ECC_ERR_INT3_EN);
		}

		desc[1].data[0] =
				FUNC1(HCLGE_PPP_MPF_ECC_ERR_INT2_EN_MASK);
		desc[1].data[1] =
				FUNC1(HCLGE_PPP_MPF_ECC_ERR_INT3_EN_MASK);
	}

	ret = FUNC3(&hdev->hw, &desc[0], 2);
	if (ret)
		FUNC2(dev, "fail(%d) to configure PPP error intr\n", ret);

	return ret;
}