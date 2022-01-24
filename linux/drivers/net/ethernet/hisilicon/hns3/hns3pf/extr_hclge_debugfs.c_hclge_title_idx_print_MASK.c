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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int,char*) ; 

__attribute__((used)) static void FUNC1(struct hclge_dev *hdev, bool flag, int index,
				  char *title_buf, char *true_buf,
				  char *false_buf)
{
	if (flag)
		FUNC0(&hdev->pdev->dev, "%s(%d): %s\n", title_buf, index,
			 true_buf);
	else
		FUNC0(&hdev->pdev->dev, "%s(%d): %s\n", title_buf, index,
			 false_buf);
}