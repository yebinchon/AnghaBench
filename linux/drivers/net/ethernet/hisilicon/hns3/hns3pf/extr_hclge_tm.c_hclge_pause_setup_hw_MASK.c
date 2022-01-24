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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct hclge_dev*) ; 
 int FUNC3 (struct hclge_dev*) ; 
 int FUNC4 (struct hclge_dev*) ; 
 int FUNC5 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hclge_dev*) ; 

int FUNC7(struct hclge_dev *hdev, bool init)
{
	int ret;

	ret = FUNC3(hdev);
	if (ret)
		return ret;

	ret = FUNC2(hdev);
	if (ret)
		return ret;

	/* Only DCB-supported dev supports qset back pressure and pfc cmd */
	if (!FUNC6(hdev))
		return 0;

	/* GE MAC does not support PFC, when driver is initializing and MAC
	 * is in GE Mode, ignore the error here, otherwise initialization
	 * will fail.
	 */
	ret = FUNC4(hdev);
	if (init && ret == -EOPNOTSUPP)
		FUNC1(&hdev->pdev->dev, "GE MAC does not support pfc\n");
	else if (ret) {
		FUNC0(&hdev->pdev->dev, "config pfc failed! ret = %d\n",
			ret);
		return ret;
	}

	return FUNC5(hdev);
}