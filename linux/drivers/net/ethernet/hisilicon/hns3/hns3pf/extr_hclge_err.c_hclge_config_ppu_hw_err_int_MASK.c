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
struct hclge_dev {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_PPU_MPF_ECC_INT_CMD ; 
 int /*<<< orphan*/  HCLGE_PPU_MPF_OTHER_INT_CMD ; 
 int /*<<< orphan*/  HCLGE_PPU_PF_OTHER_INT_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct hclge_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct hclge_dev *hdev, bool en)
{
	struct device *dev = &hdev->pdev->dev;
	int ret;

	ret = FUNC1(hdev, HCLGE_PPU_MPF_ECC_INT_CMD,
						en);
	if (ret) {
		FUNC0(dev, "fail(%d) to configure PPU MPF ECC error intr\n",
			ret);
		return ret;
	}

	ret = FUNC1(hdev,
						HCLGE_PPU_MPF_OTHER_INT_CMD,
						en);
	if (ret) {
		FUNC0(dev, "fail(%d) to configure PPU MPF other intr\n", ret);
		return ret;
	}

	ret = FUNC1(hdev,
						HCLGE_PPU_PF_OTHER_INT_CMD, en);
	if (ret)
		FUNC0(dev, "fail(%d) to configure PPU PF error interrupts\n",
			ret);
	return ret;
}