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
struct hclge_dev {int /*<<< orphan*/  ae_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNAE3_INIT_CLIENT ; 
 int /*<<< orphan*/  HNAE3_RESTORE_CLIENT ; 
 int /*<<< orphan*/  HNAE3_UNINIT_CLIENT ; 
 int FUNC0 (struct hclge_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hclge_dev *hdev)
{
	int ret;

	ret = FUNC0(hdev, HNAE3_UNINIT_CLIENT);
	if (ret)
		return ret;

	ret = FUNC1(hdev->ae_dev);
	if (ret)
		return ret;

	ret = FUNC0(hdev, HNAE3_INIT_CLIENT);
	if (ret)
		return ret;

	return FUNC0(hdev, HNAE3_RESTORE_CLIENT);
}