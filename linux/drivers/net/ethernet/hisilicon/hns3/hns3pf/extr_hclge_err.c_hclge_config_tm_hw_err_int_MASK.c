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
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_TM_QCN_MEM_ERR_INT_EN ; 
 int /*<<< orphan*/  HCLGE_TM_QCN_MEM_INT_CFG ; 
 int /*<<< orphan*/  HCLGE_TM_SCH_ECC_ERR_INT_EN ; 
 int /*<<< orphan*/  HCLGE_TM_SCH_ECC_INT_EN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct hclge_dev*,struct hclge_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct hclge_dev *hdev, bool en)
{
	struct device *dev = &hdev->pdev->dev;
	struct hclge_desc desc;
	int ret;

	/* configure TM SCH hw errors */
	FUNC5(&desc, HCLGE_TM_SCH_ECC_INT_EN, false);
	if (en)
		desc.data[0] = FUNC0(HCLGE_TM_SCH_ECC_ERR_INT_EN);

	ret = FUNC4(&hdev->hw, &desc, 1);
	if (ret) {
		FUNC1(dev, "fail(%d) to configure TM SCH errors\n", ret);
		return ret;
	}

	/* configure TM QCN hw errors */
	ret = FUNC2(hdev, &desc, HCLGE_TM_QCN_MEM_INT_CFG, 0);
	if (ret) {
		FUNC1(dev, "fail(%d) to read TM QCN CFG status\n", ret);
		return ret;
	}

	FUNC3(&desc, false);
	if (en)
		desc.data[1] = FUNC0(HCLGE_TM_QCN_MEM_ERR_INT_EN);

	ret = FUNC4(&hdev->hw, &desc, 1);
	if (ret)
		FUNC1(dev,
			"fail(%d) to configure TM QCN mem errors\n", ret);

	return ret;
}