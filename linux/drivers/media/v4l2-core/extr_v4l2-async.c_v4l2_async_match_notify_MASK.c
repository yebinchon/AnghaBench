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
struct v4l2_subdev {int /*<<< orphan*/  async_list; struct v4l2_async_notifier* notifier; struct v4l2_async_subdev* asd; } ;
struct v4l2_device {int dummy; } ;
struct v4l2_async_subdev {int /*<<< orphan*/  list; } ;
struct v4l2_async_notifier {struct v4l2_async_notifier* parent; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct v4l2_async_notifier* FUNC2 (struct v4l2_subdev*) ; 
 int FUNC3 (struct v4l2_async_notifier*,struct v4l2_subdev*,struct v4l2_async_subdev*) ; 
 int FUNC4 (struct v4l2_async_notifier*) ; 
 int FUNC5 (struct v4l2_device*,struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_async_notifier *notifier,
				   struct v4l2_device *v4l2_dev,
				   struct v4l2_subdev *sd,
				   struct v4l2_async_subdev *asd)
{
	struct v4l2_async_notifier *subdev_notifier;
	int ret;

	ret = FUNC5(v4l2_dev, sd);
	if (ret < 0)
		return ret;

	ret = FUNC3(notifier, sd, asd);
	if (ret < 0) {
		FUNC6(sd);
		return ret;
	}

	/* Remove from the waiting list */
	FUNC0(&asd->list);
	sd->asd = asd;
	sd->notifier = notifier;

	/* Move from the global subdevice list to notifier's done */
	FUNC1(&sd->async_list, &notifier->done);

	/*
	 * See if the sub-device has a notifier. If not, return here.
	 */
	subdev_notifier = FUNC2(sd);
	if (!subdev_notifier || subdev_notifier->parent)
		return 0;

	/*
	 * Proceed with checking for the sub-device notifier's async
	 * sub-devices, and return the result. The error will be handled by the
	 * caller.
	 */
	subdev_notifier->parent = notifier;

	return FUNC4(subdev_notifier);
}