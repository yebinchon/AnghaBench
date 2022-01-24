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
struct v4l2_async_notifier {int /*<<< orphan*/  list; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/ * sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_async_notifier*) ; 

__attribute__((used)) static void
FUNC2(struct v4l2_async_notifier *notifier)
{
	if (!notifier || (!notifier->v4l2_dev && !notifier->sd))
		return;

	FUNC1(notifier);

	notifier->sd = NULL;
	notifier->v4l2_dev = NULL;

	FUNC0(&notifier->list);
}