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
typedef  scalar_t__ u32 ;
struct rocker_wait {scalar_t__ nowait; } ;
struct rocker_desc_info {int dummy; } ;
struct rocker {int /*<<< orphan*/  cmd_ring; int /*<<< orphan*/  cmd_ring_lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct rocker_wait* FUNC0 (struct rocker_desc_info const*) ; 
 int /*<<< orphan*/  FUNC1 (struct rocker_desc_info const*) ; 
 struct rocker_desc_info* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rocker*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rocker_wait*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct rocker *rocker = dev_id;
	const struct rocker_desc_info *desc_info;
	struct rocker_wait *wait;
	u32 credits = 0;

	FUNC5(&rocker->cmd_ring_lock);
	while ((desc_info = FUNC2(&rocker->cmd_ring))) {
		wait = FUNC0(desc_info);
		if (wait->nowait) {
			FUNC1(desc_info);
		} else {
			FUNC4(wait);
		}
		credits++;
	}
	FUNC6(&rocker->cmd_ring_lock);
	FUNC3(rocker, &rocker->cmd_ring, credits);

	return IRQ_HANDLED;
}