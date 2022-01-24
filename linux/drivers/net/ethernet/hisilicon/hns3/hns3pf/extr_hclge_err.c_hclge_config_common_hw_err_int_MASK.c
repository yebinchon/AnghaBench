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
struct hclge_dev {int /*<<< orphan*/  hw; TYPE_1__* pdev; } ;
struct hclge_desc {void** data; int /*<<< orphan*/  flag; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int HCLGE_CMDQ_NIC_ECC_ERR_INT_EN ; 
 int HCLGE_CMDQ_NIC_ECC_ERR_INT_EN_MASK ; 
 int HCLGE_CMDQ_ROCEE_ECC_ERR_INT_EN ; 
 int HCLGE_CMDQ_ROCEE_ECC_ERR_INT_EN_MASK ; 
 int /*<<< orphan*/  HCLGE_CMD_FLAG_NEXT ; 
 int /*<<< orphan*/  HCLGE_COMMON_ECC_INT_CFG ; 
 int HCLGE_IMP_ITCM4_ECC_ERR_INT_EN ; 
 int HCLGE_IMP_ITCM4_ECC_ERR_INT_EN_MASK ; 
 int HCLGE_IMP_RD_POISON_ERR_INT_EN ; 
 int HCLGE_IMP_RD_POISON_ERR_INT_EN_MASK ; 
 int HCLGE_IMP_TCM_ECC_ERR_INT_EN ; 
 int HCLGE_IMP_TCM_ECC_ERR_INT_EN_MASK ; 
 int HCLGE_MSIX_SRAM_ECC_ERR_INT_EN ; 
 int HCLGE_MSIX_SRAM_ECC_ERR_INT_EN_MASK ; 
 int HCLGE_TQP_ECC_ERR_INT_EN ; 
 int HCLGE_TQP_ECC_ERR_INT_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct hclge_dev *hdev, bool en)
{
	struct device *dev = &hdev->pdev->dev;
	struct hclge_desc desc[2];
	int ret;

	/* configure common error interrupts */
	FUNC4(&desc[0], HCLGE_COMMON_ECC_INT_CFG, false);
	desc[0].flag |= FUNC0(HCLGE_CMD_FLAG_NEXT);
	FUNC4(&desc[1], HCLGE_COMMON_ECC_INT_CFG, false);

	if (en) {
		desc[0].data[0] = FUNC1(HCLGE_IMP_TCM_ECC_ERR_INT_EN);
		desc[0].data[2] = FUNC1(HCLGE_CMDQ_NIC_ECC_ERR_INT_EN |
					HCLGE_CMDQ_ROCEE_ECC_ERR_INT_EN);
		desc[0].data[3] = FUNC1(HCLGE_IMP_RD_POISON_ERR_INT_EN);
		desc[0].data[4] = FUNC1(HCLGE_TQP_ECC_ERR_INT_EN |
					      HCLGE_MSIX_SRAM_ECC_ERR_INT_EN);
		desc[0].data[5] = FUNC1(HCLGE_IMP_ITCM4_ECC_ERR_INT_EN);
	}

	desc[1].data[0] = FUNC1(HCLGE_IMP_TCM_ECC_ERR_INT_EN_MASK);
	desc[1].data[2] = FUNC1(HCLGE_CMDQ_NIC_ECC_ERR_INT_EN_MASK |
				HCLGE_CMDQ_ROCEE_ECC_ERR_INT_EN_MASK);
	desc[1].data[3] = FUNC1(HCLGE_IMP_RD_POISON_ERR_INT_EN_MASK);
	desc[1].data[4] = FUNC1(HCLGE_TQP_ECC_ERR_INT_EN_MASK |
				      HCLGE_MSIX_SRAM_ECC_ERR_INT_EN_MASK);
	desc[1].data[5] = FUNC1(HCLGE_IMP_ITCM4_ECC_ERR_INT_EN_MASK);

	ret = FUNC3(&hdev->hw, &desc[0], 2);
	if (ret)
		FUNC2(dev,
			"fail(%d) to configure common err interrupts\n", ret);

	return ret;
}