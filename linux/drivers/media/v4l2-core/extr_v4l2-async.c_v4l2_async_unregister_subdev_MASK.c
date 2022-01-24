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
struct v4l2_subdev {TYPE_1__* asd; struct v4l2_async_notifier* notifier; int /*<<< orphan*/ * subdev_notifier; } ;
struct v4l2_async_notifier {int /*<<< orphan*/  waiting; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_async_notifier*,struct v4l2_subdev*,TYPE_1__*) ; 

void FUNC8(struct v4l2_subdev *sd)
{
	FUNC4(&list_lock);

	FUNC1(sd->subdev_notifier);
	FUNC0(sd->subdev_notifier);
	FUNC2(sd->subdev_notifier);
	sd->subdev_notifier = NULL;

	if (sd->asd) {
		struct v4l2_async_notifier *notifier = sd->notifier;

		FUNC3(&sd->asd->list, &notifier->waiting);

		FUNC7(notifier, sd, sd->asd);
	}

	FUNC6(sd);

	FUNC5(&list_lock);
}