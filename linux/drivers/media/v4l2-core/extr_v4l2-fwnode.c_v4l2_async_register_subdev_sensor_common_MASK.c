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
struct v4l2_subdev {struct v4l2_async_notifier* subdev_notifier; int /*<<< orphan*/  dev; } ;
struct v4l2_async_notifier {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_async_notifier*) ; 
 struct v4l2_async_notifier* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_async_notifier*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_async_notifier*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct v4l2_async_notifier*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_async_notifier*) ; 
 int FUNC7 (struct v4l2_subdev*) ; 
 int FUNC8 (struct v4l2_subdev*,struct v4l2_async_notifier*) ; 

int FUNC9(struct v4l2_subdev *sd)
{
	struct v4l2_async_notifier *notifier;
	int ret;

	if (FUNC0(!sd->dev))
		return -ENODEV;

	notifier = FUNC2(sizeof(*notifier), GFP_KERNEL);
	if (!notifier)
		return -ENOMEM;

	FUNC4(notifier);

	ret = FUNC5(sd->dev,
							     notifier);
	if (ret < 0)
		goto out_cleanup;

	ret = FUNC8(sd, notifier);
	if (ret < 0)
		goto out_cleanup;

	ret = FUNC7(sd);
	if (ret < 0)
		goto out_unregister;

	sd->subdev_notifier = notifier;

	return 0;

out_unregister:
	FUNC6(notifier);

out_cleanup:
	FUNC3(notifier);
	FUNC1(notifier);

	return ret;
}