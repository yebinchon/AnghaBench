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
struct TYPE_2__ {char const* device_name; } ;
struct v4l2_async_subdev {TYPE_1__ match; int /*<<< orphan*/  match_type; } ;
struct v4l2_async_notifier {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct v4l2_async_subdev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  V4L2_ASYNC_MATCH_DEVNAME ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_async_subdev*) ; 
 struct v4l2_async_subdev* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct v4l2_async_notifier*,struct v4l2_async_subdev*) ; 

struct v4l2_async_subdev *
FUNC4(struct v4l2_async_notifier *notifier,
				       const char *device_name,
				       unsigned int asd_struct_size)
{
	struct v4l2_async_subdev *asd;
	int ret;

	asd = FUNC2(asd_struct_size, GFP_KERNEL);
	if (!asd)
		return FUNC0(-ENOMEM);

	asd->match_type = V4L2_ASYNC_MATCH_DEVNAME;
	asd->match.device_name = device_name;

	ret = FUNC3(notifier, asd);
	if (ret) {
		FUNC1(asd);
		return FUNC0(ret);
	}

	return asd;
}