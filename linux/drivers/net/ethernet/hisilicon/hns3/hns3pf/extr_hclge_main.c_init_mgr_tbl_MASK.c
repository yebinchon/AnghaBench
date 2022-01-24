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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct hclge_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hclge_mgr_table ; 

__attribute__((used)) static int FUNC3(struct hclge_dev *hdev)
{
	int ret;
	int i;

	for (i = 0; i < FUNC0(hclge_mgr_table); i++) {
		ret = FUNC2(hdev, &hclge_mgr_table[i]);
		if (ret) {
			FUNC1(&hdev->pdev->dev,
				"add mac ethertype failed, ret =%d.\n",
				ret);
			return ret;
		}
	}

	return 0;
}