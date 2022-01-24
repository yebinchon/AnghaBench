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
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  field; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  code; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct noon010_info {int /*<<< orphan*/  lock; TYPE_2__* curr_fmt; TYPE_1__* curr_win; } ;
struct TYPE_4__ {int /*<<< orphan*/  colorspace; int /*<<< orphan*/  code; } ;
struct TYPE_3__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct noon010_info* FUNC2 (struct v4l2_subdev*) ; 
 struct v4l2_mbus_framefmt* FUNC3 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
			   struct v4l2_subdev_pad_config *cfg,
			   struct v4l2_subdev_format *fmt)
{
	struct noon010_info *info = FUNC2(sd);
	struct v4l2_mbus_framefmt *mf;

	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
		if (cfg) {
			mf = FUNC3(sd, cfg, 0);
			fmt->format = *mf;
		}
		return 0;
	}
	mf = &fmt->format;

	FUNC0(&info->lock);
	mf->width = info->curr_win->width;
	mf->height = info->curr_win->height;
	mf->code = info->curr_fmt->code;
	mf->colorspace = info->curr_fmt->colorspace;
	mf->field = V4L2_FIELD_NONE;

	FUNC1(&info->lock);
	return 0;
}