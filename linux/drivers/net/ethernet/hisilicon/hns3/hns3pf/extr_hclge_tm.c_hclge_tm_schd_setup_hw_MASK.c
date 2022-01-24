#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hclge_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hclge_dev*) ; 
 int FUNC1 (struct hclge_dev*) ; 
 int FUNC2 (struct hclge_dev*) ; 
 int FUNC3 (struct hclge_dev*) ; 

int FUNC4(struct hclge_dev *hdev)
{
	int ret;

	/* Cfg tm mapping  */
	ret = FUNC1(hdev);
	if (ret)
		return ret;

	/* Cfg tm shaper */
	ret = FUNC3(hdev);
	if (ret)
		return ret;

	/* Cfg dwrr */
	ret = FUNC0(hdev);
	if (ret)
		return ret;

	/* Cfg schd mode for each level schd */
	return FUNC2(hdev);
}