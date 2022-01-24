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
struct v4l2_mbus_framefmt {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  code; int /*<<< orphan*/  colorspace; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct flite_frame {TYPE_2__ rect; int /*<<< orphan*/  f_height; int /*<<< orphan*/  f_width; TYPE_1__* fmt; } ;
struct fimc_lite {int /*<<< orphan*/  lock; struct flite_frame inp_frame; } ;
struct TYPE_3__ {int /*<<< orphan*/  mbus_code; int /*<<< orphan*/  colorspace; } ;

/* Variables and functions */
 scalar_t__ FLITE_SD_PAD_SINK ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 struct v4l2_mbus_framefmt* FUNC0 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct fimc_lite* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
				    struct v4l2_subdev_pad_config *cfg,
				    struct v4l2_subdev_format *fmt)
{
	struct fimc_lite *fimc = FUNC3(sd);
	struct v4l2_mbus_framefmt *mf = &fmt->format;
	struct flite_frame *f = &fimc->inp_frame;

	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
		mf = FUNC0(sd, cfg, fmt->pad);
		fmt->format = *mf;
		return 0;
	}

	FUNC1(&fimc->lock);
	mf->colorspace = f->fmt->colorspace;
	mf->code = f->fmt->mbus_code;

	if (fmt->pad == FLITE_SD_PAD_SINK) {
		/* full camera input frame size */
		mf->width = f->f_width;
		mf->height = f->f_height;
	} else {
		/* crop size */
		mf->width = f->rect.width;
		mf->height = f->rect.height;
	}
	FUNC2(&fimc->lock);
	return 0;
}