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
struct v4l2_async_subdev {int match_type; } ;
struct v4l2_async_notifier {TYPE_1__* v4l2_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
#define  V4L2_ASYNC_MATCH_CUSTOM 131 
#define  V4L2_ASYNC_MATCH_DEVNAME 130 
#define  V4L2_ASYNC_MATCH_FWNODE 129 
#define  V4L2_ASYNC_MATCH_I2C 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,struct v4l2_async_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_async_notifier*,struct v4l2_async_subdev*,int) ; 

__attribute__((used)) static int FUNC3(struct v4l2_async_notifier *notifier,
					 struct v4l2_async_subdev *asd,
					 int this_index)
{
	struct device *dev =
		notifier->v4l2_dev ? notifier->v4l2_dev->dev : NULL;

	if (!asd)
		return -EINVAL;

	switch (asd->match_type) {
	case V4L2_ASYNC_MATCH_CUSTOM:
	case V4L2_ASYNC_MATCH_DEVNAME:
	case V4L2_ASYNC_MATCH_I2C:
	case V4L2_ASYNC_MATCH_FWNODE:
		if (FUNC2(notifier, asd,
							 this_index)) {
			FUNC0(dev, "subdev descriptor already listed in this or other notifiers\n");
			return -EEXIST;
		}
		break;
	default:
		FUNC1(dev, "Invalid match type %u on %p\n",
			asd->match_type, asd);
		return -EINVAL;
	}

	return 0;
}