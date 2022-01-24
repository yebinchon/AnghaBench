#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev_frame_size_enum {int /*<<< orphan*/  max_height; int /*<<< orphan*/  max_width; int /*<<< orphan*/  which; int /*<<< orphan*/  index; int /*<<< orphan*/  code; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_frmsizeenum {TYPE_2__ discrete; int /*<<< orphan*/  type; int /*<<< orphan*/  pixel_format; int /*<<< orphan*/  index; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  mbus_code; } ;
struct ceu_subdev {TYPE_1__ mbus_fmt; struct v4l2_subdev* v4l2_sd; } ;
struct ceu_fmt {int dummy; } ;
struct ceu_device {struct ceu_subdev* sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_FRMSIZE_TYPE_DISCRETE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  enum_frame_size ; 
 struct ceu_fmt* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pad ; 
 int FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_frame_size_enum*) ; 
 struct ceu_device* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *fh,
			       struct v4l2_frmsizeenum *fsize)
{
	struct ceu_device *ceudev = FUNC4(file);
	struct ceu_subdev *ceu_sd = ceudev->sd;
	const struct ceu_fmt *ceu_fmt;
	struct v4l2_subdev *v4l2_sd = ceu_sd->v4l2_sd;
	int ret;

	struct v4l2_subdev_frame_size_enum fse = {
		.code	= ceu_sd->mbus_fmt.mbus_code,
		.index	= fsize->index,
		.which	= V4L2_SUBDEV_FORMAT_ACTIVE,
	};

	/* Just check if user supplied pixel format is supported. */
	ceu_fmt = FUNC2(fsize->pixel_format);
	if (!ceu_fmt)
		return -EINVAL;

	ret = FUNC3(v4l2_sd, pad, enum_frame_size,
			       NULL, &fse);
	if (ret)
		return ret;

	fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
	fsize->discrete.width = FUNC1(fse.max_width);
	fsize->discrete.height = FUNC0(fse.max_height);

	return 0;
}