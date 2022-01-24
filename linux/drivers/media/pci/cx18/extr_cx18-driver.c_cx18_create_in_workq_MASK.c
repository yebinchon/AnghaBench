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
struct TYPE_2__ {char* name; } ;
struct cx18 {int /*<<< orphan*/  in_work_queue; int /*<<< orphan*/  in_workq_name; TYPE_1__ v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,char*) ; 

__attribute__((used)) static int FUNC3(struct cx18 *cx)
{
	FUNC2(cx->in_workq_name, sizeof(cx->in_workq_name), "%s-in",
		 cx->v4l2_dev.name);
	cx->in_work_queue = FUNC1("%s", 0, cx->in_workq_name);
	if (!cx->in_work_queue) {
		FUNC0("Unable to create incoming mailbox handler thread\n");
		return -ENOMEM;
	}
	return 0;
}