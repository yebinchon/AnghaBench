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
struct TYPE_2__ {int /*<<< orphan*/  stats_timer; } ;
struct hclge_dev {int /*<<< orphan*/  service_task; int /*<<< orphan*/  affinity_mask; int /*<<< orphan*/  fd_arfs_expire_timer; TYPE_1__ hw_stats; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_STATE_DOWN ; 
 int /*<<< orphan*/  HCLGE_STATE_REMOVING ; 
 int /*<<< orphan*/  HCLGE_STATE_SERVICE_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  system_wq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct hclge_dev *hdev, unsigned long delay_time)
{
	if (!FUNC3(HCLGE_STATE_DOWN, &hdev->state) &&
	    !FUNC3(HCLGE_STATE_REMOVING, &hdev->state) &&
	    !FUNC2(HCLGE_STATE_SERVICE_SCHED, &hdev->state)) {
		hdev->hw_stats.stats_timer++;
		hdev->fd_arfs_expire_timer++;
		FUNC1(FUNC0(&hdev->affinity_mask),
				    system_wq, &hdev->service_task,
				    delay_time);
	}
}