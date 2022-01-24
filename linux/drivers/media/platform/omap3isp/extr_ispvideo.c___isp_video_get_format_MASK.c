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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev_format {int /*<<< orphan*/  format; int /*<<< orphan*/  which; int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pix; } ;
struct v4l2_format {TYPE_1__ fmt; int /*<<< orphan*/  type; } ;
struct isp_video {int /*<<< orphan*/  type; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  get_fmt ; 
 int FUNC0 (struct isp_video*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct v4l2_subdev* FUNC1 (struct isp_video*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_format*) ; 

__attribute__((used)) static int
FUNC5(struct isp_video *video, struct v4l2_format *format)
{
	struct v4l2_subdev_format fmt;
	struct v4l2_subdev *subdev;
	u32 pad;
	int ret;

	subdev = FUNC1(video, &pad);
	if (subdev == NULL)
		return -EINVAL;

	fmt.pad = pad;
	fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;

	FUNC2(&video->mutex);
	ret = FUNC4(subdev, pad, get_fmt, NULL, &fmt);
	FUNC3(&video->mutex);

	if (ret)
		return ret;

	format->type = video->type;
	return FUNC0(video, &fmt.format, &format->fmt.pix);
}