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
struct v4l2_async_notifier {int /*<<< orphan*/  v4l2_dev; struct v4l2_async_notifier* parent; int /*<<< orphan*/  waiting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct v4l2_async_notifier*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_async_notifier*) ; 

__attribute__((used)) static int
FUNC3(struct v4l2_async_notifier *notifier)
{
	/* Quick check whether there are still more sub-devices here. */
	if (!FUNC0(&notifier->waiting))
		return 0;

	/* Check the entire notifier tree; find the root notifier first. */
	while (notifier->parent)
		notifier = notifier->parent;

	/* This is root if it has v4l2_dev. */
	if (!notifier->v4l2_dev)
		return 0;

	/* Is everything ready? */
	if (!FUNC2(notifier))
		return 0;

	return FUNC1(notifier);
}