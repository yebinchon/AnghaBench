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
struct si476x_radio {TYPE_1__* core; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
typedef  int __poll_t ;
struct TYPE_2__ {int /*<<< orphan*/  rds_fifo; int /*<<< orphan*/  is_alive; int /*<<< orphan*/  rds_read_queue; } ;

/* Variables and functions */
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int FUNC4 (struct file*,struct poll_table_struct*) ; 
 struct si476x_radio* FUNC5 (struct file*) ; 

__attribute__((used)) static __poll_t FUNC6(struct file *file,
				struct poll_table_struct *pts)
{
	struct si476x_radio *radio = FUNC5(file);
	__poll_t req_events = FUNC2(pts);
	__poll_t err = FUNC4(file, pts);

	if (req_events & (EPOLLIN | EPOLLRDNORM)) {
		if (FUNC0(&radio->core->is_alive))
			FUNC3(file, &radio->core->rds_read_queue, pts);

		if (!FUNC0(&radio->core->is_alive))
			err = EPOLLHUP;

		if (!FUNC1(&radio->core->rds_fifo))
			err = EPOLLIN | EPOLLRDNORM;
	}

	return err;
}