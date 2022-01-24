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
struct si476x_core {int rds_drainer_is_working; int /*<<< orphan*/  rds_drainer_status_lock; int /*<<< orphan*/  rds_fifo_drainer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct si476x_core *core)
{
	FUNC0(&core->rds_drainer_status_lock);
	if (!core->rds_drainer_is_working) {
		core->rds_drainer_is_working = true;
		FUNC2(&core->rds_fifo_drainer);
	}
	FUNC1(&core->rds_drainer_status_lock);
}