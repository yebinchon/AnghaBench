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
typedef  scalar_t__ u16 ;
struct hclge_dev {int /*<<< orphan*/  hw; TYPE_1__* pdev; } ;
struct hclge_desc {int /*<<< orphan*/  flag; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct hclge_dev *hdev,
				 struct hclge_desc *desc, u32 cmd, u16 flag)
{
	struct device *dev = &hdev->pdev->dev;
	int desc_num = 1;
	int ret;

	FUNC3(&desc[0], cmd, true);
	if (flag) {
		desc[0].flag |= FUNC0(flag);
		FUNC3(&desc[1], cmd, true);
		desc_num = 2;
	}

	ret = FUNC2(&hdev->hw, &desc[0], desc_num);
	if (ret)
		FUNC1(dev, "query error cmd failed (%d)\n", ret);

	return ret;
}