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
struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int /*<<< orphan*/  keep_alive_timer; } ;

/* Variables and functions */
 int HCLGEVF_KEEP_ALIVE_TASK_INTERVAL ; 
 int HZ ; 
 struct hclgevf_dev* FUNC0 (struct hnae3_handle*) ; 
 int FUNC1 (struct hnae3_handle*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct hnae3_handle *handle)
{
	struct hclgevf_dev *hdev = FUNC0(handle);
	int ret;

	ret = FUNC1(handle, true);
	if (ret)
		return ret;

	FUNC2(&hdev->keep_alive_timer, jiffies +
		  HCLGEVF_KEEP_ALIVE_TASK_INTERVAL * HZ);

	return 0;
}