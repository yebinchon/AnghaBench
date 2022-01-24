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
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;
struct ov7670_info {scalar_t__ on; int /*<<< orphan*/  wsize; int /*<<< orphan*/  fmt; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (struct v4l2_subdev*,struct v4l2_mbus_framefmt*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ov7670_info* FUNC2 (struct v4l2_subdev*) ; 
 struct v4l2_mbus_framefmt* FUNC3 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
		struct v4l2_subdev_pad_config *cfg,
		struct v4l2_subdev_format *format)
{
	struct ov7670_info *info = FUNC2(sd);
#ifdef CONFIG_VIDEO_V4L2_SUBDEV_API
	struct v4l2_mbus_framefmt *mbus_fmt;
#endif
	int ret;

	if (format->pad)
		return -EINVAL;

	if (format->which == V4L2_SUBDEV_FORMAT_TRY) {
		ret = FUNC1(sd, &format->format, NULL, NULL);
		if (ret)
			return ret;
#ifdef CONFIG_VIDEO_V4L2_SUBDEV_API
		mbus_fmt = v4l2_subdev_get_try_format(sd, cfg, format->pad);
		*mbus_fmt = format->format;
#endif
		return 0;
	}

	ret = FUNC1(sd, &format->format, &info->fmt, &info->wsize);
	if (ret)
		return ret;

	/*
	 * If the device is not powered up by the host driver do
	 * not apply any changes to H/W at this time. Instead
	 * the frame format will be restored right after power-up.
	 */
	if (info->on)
		return FUNC0(sd);

	return 0;
}