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
struct v4l2_mbus_framefmt {int /*<<< orphan*/  field; int /*<<< orphan*/  colorspace; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct noon010_info {int apply_new_cfg; int /*<<< orphan*/  lock; struct noon010_frmsize const* curr_win; struct noon010_format const* curr_fmt; int /*<<< orphan*/  streaming; } ;
struct noon010_frmsize {int dummy; } ;
struct noon010_format {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_JPEG ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct noon010_format* FUNC2 (struct v4l2_subdev*,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_mbus_framefmt*,struct noon010_frmsize const**) ; 
 struct noon010_info* FUNC4 (struct v4l2_subdev*) ; 
 struct v4l2_mbus_framefmt* FUNC5 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
			   struct v4l2_subdev_format *fmt)
{
	struct noon010_info *info = FUNC4(sd);
	const struct noon010_frmsize *size = NULL;
	const struct noon010_format *nf;
	struct v4l2_mbus_framefmt *mf;
	int ret = 0;

	nf = FUNC2(sd, &fmt->format);
	FUNC3(&fmt->format, &size);
	fmt->format.colorspace = V4L2_COLORSPACE_JPEG;
	fmt->format.field = V4L2_FIELD_NONE;

	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
		if (cfg) {
			mf = FUNC5(sd, cfg, 0);
			*mf = fmt->format;
		}
		return 0;
	}
	FUNC0(&info->lock);
	if (!info->streaming) {
		info->apply_new_cfg = 1;
		info->curr_fmt = nf;
		info->curr_win = size;
	} else {
		ret = -EBUSY;
	}
	FUNC1(&info->lock);
	return ret;
}