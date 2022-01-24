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
struct v4l2_format {scalar_t__ type; TYPE_1__ fmt; } ;
struct isp_video {scalar_t__ type; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOIOCTLCMD ; 
 int ENOTTY ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  get_fmt ; 
 int /*<<< orphan*/  FUNC0 (struct isp_video*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct v4l2_subdev* FUNC2 (struct isp_video*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_format*) ; 
 struct isp_video* FUNC4 (struct file*) ; 

__attribute__((used)) static int
FUNC5(struct file *file, void *fh, struct v4l2_format *format)
{
	struct isp_video *video = FUNC4(file);
	struct v4l2_subdev_format fmt;
	struct v4l2_subdev *subdev;
	u32 pad;
	int ret;

	if (format->type != video->type)
		return -EINVAL;

	subdev = FUNC2(video, &pad);
	if (subdev == NULL)
		return -EINVAL;

	FUNC1(&format->fmt.pix, &fmt.format);

	fmt.pad = pad;
	fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
	ret = FUNC3(subdev, pad, get_fmt, NULL, &fmt);
	if (ret)
		return ret == -ENOIOCTLCMD ? -ENOTTY : ret;

	FUNC0(video, &fmt.format, &format->fmt.pix);
	return 0;
}