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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct hclge_dev*) ; 
 int FUNC2 (struct hclge_dev*) ; 

__attribute__((used)) static int FUNC3(struct hclge_dev *hdev)
{
	int ret;

	ret = FUNC1(hdev);
	if (ret) {
		FUNC0(&hdev->pdev->dev,
			"query function status error %d.\n", ret);
		return ret;
	}

	/* get pf resource */
	ret = FUNC2(hdev);
	if (ret)
		FUNC0(&hdev->pdev->dev, "query pf resource error %d.\n", ret);

	return ret;
}