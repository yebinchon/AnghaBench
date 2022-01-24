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
struct hclge_desc {void** data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int revision; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_CONFIG_ROCEE_RAS_INT_EN ; 
 int /*<<< orphan*/  HCLGE_ROCEE_RAS_CE_INT_EN ; 
 int /*<<< orphan*/  HCLGE_ROCEE_RAS_CE_INT_EN_MASK ; 
 int /*<<< orphan*/  HCLGE_ROCEE_RAS_NFE_INT_EN ; 
 int /*<<< orphan*/  HCLGE_ROCEE_RAS_NFE_INT_EN_MASK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hclge_dev*) ; 

int FUNC6(struct hclge_dev *hdev, bool en)
{
	struct device *dev = &hdev->pdev->dev;
	struct hclge_desc desc;
	int ret;

	if (hdev->pdev->revision < 0x21 || !FUNC5(hdev))
		return 0;

	FUNC3(&desc, HCLGE_CONFIG_ROCEE_RAS_INT_EN, false);
	if (en) {
		/* enable ROCEE hw error interrupts */
		desc.data[0] = FUNC0(HCLGE_ROCEE_RAS_NFE_INT_EN);
		desc.data[1] = FUNC0(HCLGE_ROCEE_RAS_CE_INT_EN);

		FUNC4(hdev);
	}
	desc.data[2] = FUNC0(HCLGE_ROCEE_RAS_NFE_INT_EN_MASK);
	desc.data[3] = FUNC0(HCLGE_ROCEE_RAS_CE_INT_EN_MASK);

	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret)
		FUNC1(dev, "failed(%d) to config ROCEE RAS interrupt\n", ret);

	return ret;
}