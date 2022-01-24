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
 int /*<<< orphan*/  HNAE3_LOOP_PARALLEL_SERDES ; 
 int /*<<< orphan*/  HNAE3_LOOP_SERIAL_SERDES ; 
 int FUNC0 (struct hclge_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hclge_dev*,int) ; 

__attribute__((used)) static int FUNC2(struct hclge_dev *hdev)
{
	int ret;

	ret = FUNC1(hdev, false);
	if (ret)
		return ret;

	ret = FUNC0(hdev, false, HNAE3_LOOP_SERIAL_SERDES);
	if (ret)
		return ret;

	return FUNC0(hdev, false,
					 HNAE3_LOOP_PARALLEL_SERDES);
}