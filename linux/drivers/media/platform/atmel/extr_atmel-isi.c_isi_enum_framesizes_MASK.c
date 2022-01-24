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
struct v4l2_subdev_frame_size_enum {int /*<<< orphan*/  max_height; int /*<<< orphan*/  max_width; int /*<<< orphan*/  code; int /*<<< orphan*/  which; int /*<<< orphan*/  index; } ;
struct TYPE_4__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_frmsizeenum {TYPE_2__ discrete; int /*<<< orphan*/  type; int /*<<< orphan*/  pixel_format; int /*<<< orphan*/  index; } ;
struct isi_format {int /*<<< orphan*/  mbus_code; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  subdev; } ;
struct atmel_isi {TYPE_1__ entity; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_FRMSIZE_TYPE_DISCRETE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  enum_frame_size ; 
 struct isi_format* FUNC0 (struct atmel_isi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pad ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_frame_size_enum*) ; 
 struct atmel_isi* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh,
			       struct v4l2_frmsizeenum *fsize)
{
	struct atmel_isi *isi = FUNC2(file);
	const struct isi_format *isi_fmt;
	struct v4l2_subdev_frame_size_enum fse = {
		.index = fsize->index,
		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
	};
	int ret;

	isi_fmt = FUNC0(isi, fsize->pixel_format);
	if (!isi_fmt)
		return -EINVAL;

	fse.code = isi_fmt->mbus_code;

	ret = FUNC1(isi->entity.subdev, pad, enum_frame_size,
			       NULL, &fse);
	if (ret)
		return ret;

	fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
	fsize->discrete.width = fse.max_width;
	fsize->discrete.height = fse.max_height;

	return 0;
}