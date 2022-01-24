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
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct hclge_dev*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hclge_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hclge_dev*) ; 

__attribute__((used)) static int FUNC4(struct hclge_dev *hdev)
{
	u32 desc_num;
	int ret;

	ret = FUNC1(hdev, &desc_num);

	/* The firmware supports the new statistics acquisition method */
	if (!ret)
		ret = FUNC2(hdev, desc_num);
	else if (ret == -EOPNOTSUPP)
		ret = FUNC3(hdev);
	else
		FUNC0(&hdev->pdev->dev, "query mac reg num fail!\n");

	return ret;
}