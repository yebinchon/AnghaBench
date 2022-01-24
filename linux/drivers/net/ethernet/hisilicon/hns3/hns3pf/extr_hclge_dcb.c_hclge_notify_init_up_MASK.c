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
 int /*<<< orphan*/  HNAE3_INIT_CLIENT ; 
 int /*<<< orphan*/  HNAE3_UP_CLIENT ; 
 int FUNC0 (struct hclge_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct hclge_dev *hdev)
{
	int ret;

	ret = FUNC0(hdev, HNAE3_INIT_CLIENT);
	if (ret)
		return ret;

	return FUNC0(hdev, HNAE3_UP_CLIENT);
}