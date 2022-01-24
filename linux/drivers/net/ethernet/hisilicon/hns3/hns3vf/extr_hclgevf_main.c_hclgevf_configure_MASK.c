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
struct hclgevf_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hclgevf_dev*) ; 
 int FUNC1 (struct hclgevf_dev*) ; 
 int FUNC2 (struct hclgevf_dev*) ; 
 int FUNC3 (struct hclgevf_dev*) ; 
 int FUNC4 (struct hclgevf_dev*) ; 

__attribute__((used)) static int FUNC5(struct hclgevf_dev *hdev)
{
	int ret;

	/* get current port based vlan state from PF */
	ret = FUNC1(hdev);
	if (ret)
		return ret;

	/* get queue configuration from PF */
	ret = FUNC3(hdev);
	if (ret)
		return ret;

	/* get queue depth info from PF */
	ret = FUNC2(hdev);
	if (ret)
		return ret;

	ret = FUNC0(hdev);
	if (ret)
		return ret;

	/* get tc configuration from PF */
	return FUNC4(hdev);
}