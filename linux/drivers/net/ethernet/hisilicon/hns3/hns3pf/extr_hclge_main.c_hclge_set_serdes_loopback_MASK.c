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
typedef  enum hnae3_loop { ____Placeholder_hnae3_loop } hnae3_loop ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_dev*,int) ; 
 int FUNC2 (struct hclge_dev*,int,int) ; 
 int FUNC3 (struct hclge_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hclge_dev *hdev, bool en,
				     enum hnae3_loop loop_mode)
{
	int ret;

	ret = FUNC2(hdev, en, loop_mode);
	if (ret)
		return ret;

	FUNC1(hdev, en);

	ret = FUNC3(hdev, en, FALSE);
	if (ret)
		FUNC0(&hdev->pdev->dev,
			"serdes loopback config mac mode timeout\n");

	return ret;
}