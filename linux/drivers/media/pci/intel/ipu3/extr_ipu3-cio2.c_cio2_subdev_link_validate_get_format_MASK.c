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
struct v4l2_subdev_format {int /*<<< orphan*/  pad; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;
struct media_pad {int /*<<< orphan*/  index; int /*<<< orphan*/  entity; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  get_fmt ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct v4l2_subdev* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct v4l2_subdev*,struct media_pad*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_format*) ; 

__attribute__((used)) static int FUNC3(struct media_pad *pad,
						struct v4l2_subdev_format *fmt)
{
	if (FUNC0(pad->entity)) {
		struct v4l2_subdev *sd =
			FUNC1(pad->entity);

		fmt->which = V4L2_SUBDEV_FORMAT_ACTIVE;
		fmt->pad = pad->index;
		return FUNC2(sd, pad, get_fmt, NULL, fmt);
	}

	return -EINVAL;
}