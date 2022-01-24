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
struct timer_list {int dummy; } ;
struct hclgevf_dev {int /*<<< orphan*/  keep_alive_timer; int /*<<< orphan*/  keep_alive_task; } ;

/* Variables and functions */
 int HCLGEVF_KEEP_ALIVE_TASK_INTERVAL ; 
 int HZ ; 
 struct hclgevf_dev* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct hclgevf_dev* hdev ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  keep_alive_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct hclgevf_dev *hdev = FUNC0(hdev, t, keep_alive_timer);

	FUNC2(&hdev->keep_alive_task);
	FUNC1(&hdev->keep_alive_timer, jiffies +
		  HCLGEVF_KEEP_ALIVE_TASK_INTERVAL * HZ);
}