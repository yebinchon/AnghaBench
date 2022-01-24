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
struct task_struct {int dummy; } ;
struct rc_dev {TYPE_1__* raw; int /*<<< orphan*/  minor; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; struct task_struct* thread; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  ir_raw_client_list ; 
 int /*<<< orphan*/  ir_raw_event_thread ; 
 int /*<<< orphan*/  ir_raw_handler_lock ; 
 struct task_struct* FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct rc_dev *dev)
{
	struct task_struct *thread;

	thread = FUNC2(ir_raw_event_thread, dev->raw, "rc%u", dev->minor);
	if (FUNC0(thread))
		return FUNC1(thread);

	dev->raw->thread = thread;

	FUNC4(&ir_raw_handler_lock);
	FUNC3(&dev->raw->list, &ir_raw_client_list);
	FUNC5(&ir_raw_handler_lock);

	return 0;
}